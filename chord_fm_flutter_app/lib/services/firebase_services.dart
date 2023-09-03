import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:smartradio/presentation/homepage_screen/homepage_screen.dart';
import '../presentation/otp_login_screen/otp.dart';

class FirebaseServices extends ChangeNotifier{
   static var verify="";
   GoogleSignInAccount? _user;
   GoogleSignInAccount get user => _user!;
  final auth=FirebaseAuth.instance;
  final googleSignIn=GoogleSignIn();

 Future signInWithGoogle() async {
   final googleUser = await googleSignIn.signIn();
   if (googleUser == null) return;
   _user = googleUser;

   final googleAuth = await googleUser.authentication;

   final credential = GoogleAuthProvider.credential(
     accessToken: googleAuth.accessToken,
     idToken: googleAuth.idToken,
   );

   await FirebaseAuth.instance.signInWithCredential(credential);

   notifyListeners();
 }
  signOut()async{
    await auth.signOut();
    await googleSignIn.signOut();
  }

   signInWithPhone(countryCode, phoneNumber) async {
     await FirebaseAuth.instance.verifyPhoneNumber(
       phoneNumber: '${countryCode + phoneNumber}',
       verificationCompleted: (PhoneAuthCredential credential) {},
       verificationFailed: (FirebaseAuthException e) {},
       codeSent: (String verificationId, int? resendToken) {
         verify = verificationId;
         Get.to(Otp());
       },
       codeAutoRetrievalTimeout: (String verificationId) {},
     );
   }

   verifycode(code) async {
     try {
       PhoneAuthCredential credential = PhoneAuthProvider.credential(
           verificationId: verify, smsCode: code);
       await auth.signInWithCredential(credential);
       Get.to(HomepageScreen());
     } catch (e) {
       print(e);
     }
   }
}