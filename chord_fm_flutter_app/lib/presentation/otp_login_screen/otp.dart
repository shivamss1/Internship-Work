import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartradio/presentation/otp_login_screen/phone.dart';
import 'package:smartradio/services/firebase_services.dart';

import '../../core/app_export.dart';
import '../../models/PhoneNumber_DataModel.dart';
import '../../services/PhoneNumber_post_api_service.dart';
class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);
 
  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  var code="";
  PhoneNumberDataModel? _phoneNumberDataModel;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor:Colors.transparent,elevation:0,leading: IconButton( icon:Icon(Icons.arrow_back_ios_new_rounded,color: Colors.cyan,) ,onPressed: (){Navigator.pop(context);},),),
          backgroundColor: Colors.white,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                  children:[
                    Container(
                        padding: EdgeInsets.only(top:size.height*0.1),
                        child: Image.asset(ImageConstant.otp,width:size.width)
                    ),
                    Container(
                      padding: EdgeInsets.only(top:size.height*0.01),
                        child:Text('OTP Verification',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.cyan),)
                    ),
                    Container(
                      padding: EdgeInsets.only(top:size.height*0.01),
                        child: Text('Enter OTP Below ',style: TextStyle(fontSize: 18,color: Colors.cyan),textAlign:TextAlign.center,)
                    ),
                    Container(
                      padding: EdgeInsets.only(top:size.height*0.02),
                        child: Pinput(
                          length: 6,
                          showCursor: true,
                          onChanged: (value){
                            code=value;
                          },
                        ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:size.height*0.03),
                        child: SizedBox(
                          height: 45,
                          width: size.width*0.90,
                          child: ElevatedButton(
                            onPressed: ()async{
                              await FirebaseServices().verifycode(code);
                              String phoneno=phoneNumber;
                              String emailId=phoneNumber+"@gmail.com";
                              String name1=phoneNumber;
                              PhoneNumberDataModel pp=await PhonePostApi().phonedata(phoneno, name1, emailId);
                              SharedPreferences _share=await SharedPreferences.getInstance();
                              setState(() {
                                _phoneNumberDataModel=pp;
                              });
                              _share.setString("email",pp.emailId.toString());
                              _share.setString("name",pp.userName.toString());
                              _share.setString("phonenumber",pp.phoneNumber.toString());
                            },
                            child: Text('Verify Phone Number'),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)
                                )
                            ),
                          ),
                        )
                    ),
                    Container(
                      padding: EdgeInsets.only(top:size.height*0.01),
                        child: TextButton(onPressed: (){Get.to(Phone());},
                        child: Text('Edit Phone Number?',style: TextStyle(fontSize: 18,color: Colors.cyan),),))
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
