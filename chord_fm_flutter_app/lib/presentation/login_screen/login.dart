import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartradio/models/Google_login_model.dart';
import 'package:smartradio/models/Login_model.dart';
import 'package:smartradio/services/Email_password_login_api_service.dart';
import 'package:smartradio/services/Googlelogin_post_api_service.dart';
import '../../core/app_export.dart';
import '../../services/firebase_services.dart';
import '../homepage_screen/homepage_screen.dart';
import '../otp_login_screen/phone.dart';

class Loginn extends StatefulWidget {
  const Loginn({Key? key}) : super(key: key);

  @override
  State<Loginn> createState() => _LoginnState();
}



class _LoginnState extends State<Loginn> {
  int changevalue = 0;
  bool passwordobsured = true;


  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          passwordobsured = !passwordobsured;
        });
      },
      icon:
          passwordobsured ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
      color: Colors.grey,
    );
  }

  LoggedIn(){
     return ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan),
              onPressed: () async{
                String email=emailcontroller.text;
                String password=passwordcontroller.text;
                Normalloginmodel n1=await NormalLogin().nlogin(email, password);
                var _sharedpreference=await SharedPreferences.getInstance();
                setState(() {
                  _normalloginmodel=n1;
                });
                _sharedpreference.setString("email",n1.emailId.toString());
              },
              child: Text("Login"));
    }
    LoggedOut() {
     return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan),
        child: Text("Logout"),
        onPressed: () {},
      );
    }

  final  user = FirebaseAuth.instance.currentUser;
  Googlemodel? _goooglemodel;
  Normalloginmodel? _normalloginmodel;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  onPressed: () {
                    Get.to(HomepageScreen());
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.cyan,
                  ),
                )),
            backgroundColor: ColorConstant.whiteA700,
            body: StreamBuilder(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (context, snapshot) {
                  return Container(
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Container(
                            padding: EdgeInsets.only(
                                left: size.width * 0.01,
                                right: size.width * 0.01),
                            child: Image.asset(
                              ImageConstant.loginimage,
                              width: size.width,
                            )),
                        Container(
                          padding: EdgeInsets.all(size.height * 0.01),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: size.height * 0.01)),
                              TextFormField(
                                controller: emailcontroller,
                                cursorColor: Colors.cyan,
                                decoration: InputDecoration(
                                  hintText: "Email ID",
                                  icon: Icon(Icons.account_box),
                                ),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: size.height * 0.01)),
                              TextFormField(
                                  controller: passwordcontroller,
                                  cursorColor: Colors.cyan,
                                  obscureText: passwordobsured,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    icon: Icon(Icons.lock),
                                    suffixIcon: togglePassword(),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.only(left: size.width * 0.001),
                            child: Row(
                              children: [
                                Radio(
                                    activeColor: Colors.cyan,
                                    value: 1,
                                    groupValue: changevalue,
                                    onChanged: (value) {
                                      setState(() {
                                        changevalue = value!;
                                      });
                                    }),
                                Text(
                                  "Remember Me",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            )),
                        Container(
                          padding: EdgeInsets.only(
                              left: size.width * 0.16, top: size.height * 0.01),
                          child: Row(
                            children: [
                              SizedBox(
                                width: size.width * 0.35,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.cyan),
                                    onPressed: () async{
                                      String email=emailcontroller.text;
                                      String password=passwordcontroller.text;
                                      Normalloginmodel n1=await NormalLogin().nlogin(email, password);
                                      var _sharedpreference=await SharedPreferences.getInstance();
                                      setState(() {
                                        _normalloginmodel=n1;
                                      });
                                      _sharedpreference.setString("email",n1.emailId.toString());
                                    },
                                    child: Text("Login")),
                              ),
                              Padding(padding: EdgeInsets.all(5)),
                              SizedBox(
                                  width: size.width * 0.35,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white54),
                                      onPressed: () {
                                        final provider =
                                            Provider.of<FirebaseServices>(
                                                context,
                                                listen: false);
                                        provider.signOut();
                                      },
                                      child: Text(
                                        "Skip",
                                        style: TextStyle(color: Colors.black),
                                      )))
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: size.height * 0.02),
                          child: TextButton(
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.cyan),
                            onPressed: () {},
                            child: Text(
                              "Forgot Your Password?",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: size.height * 0.02),
                          child: SizedBox(
                            height: size.height * 0.053,
                            width: size.width * 0.6,
                            child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white54),
                                onPressed: () async {
                                  final provider = Provider.of<FirebaseServices>(context,listen: false);
                                  provider.signInWithGoogle();
                                  String? email = user?.email.toString();
                                  String? name = user?.displayName.toString();
                                  String? image = user?.photoURL.toString();
                                  Googlemodel gooogle = await GoogleLoginApi().loginData(email!,name!,image!);
                                  setState(() {
                                    _goooglemodel = gooogle;
                                  });
                                  //Get.to(HomepageScreen());
                                },
                                label: Text(
                                  "Login With Google",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                icon: Image.asset(
                                  ImageConstant.google,
                                  width: 30,
                                )),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: size.height * 0.02),
                          child: SizedBox(
                            height: size.height * 0.053,
                            width: size.width * 0.6,
                            child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white54),
                                onPressed: (){
                                  Get.to(Phone());
                                },
                                label: Text(
                                  "Login With Phone",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                icon: Image.asset(
                                  ImageConstant.phone,
                                  width: 30,
                                )),
                          ),
                        ),
                        /*Container(
                    padding: EdgeInsets.only(top:size.height*0.02),
                    child: TextButton(
                      onPressed: (){
                        Get.to(registration());
                      },
                      child: Text.rich(
                          TextSpan(
                            style: TextStyle(color: Colors.black,fontSize: 16),
                            text:"Don't Have Account?",
                            children:[
                              TextSpan(
                                style: TextStyle(color: Colors.cyan,fontSize: 18),
                                text: "Register",
                              )
                            ],)),
                    ),
                  )*/
                      ]),
                    ),
                  );
                })));
  }
}
