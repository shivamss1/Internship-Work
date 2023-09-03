import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../login_screen/login.dart';
class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  int changeValue =0;
  bool isSecurePassword = true;
  Widget togglePassword(){
    return IconButton(onPressed: () {
      setState(() {
        isSecurePassword=!isSecurePassword;
      });
    },icon: isSecurePassword ?Icon(Icons.visibility_off):Icon(Icons.visibility),color:Colors.grey,);
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 3,
            backgroundColor: Colors.white,
            title: Text("Sign Up",style: TextStyle(fontSize: 25,color: Colors.cyan),),
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
             icon:Icon(Icons.arrow_back_ios_new,size: 27,color: Colors.cyan) , ),
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top:size.height*0.01,left: size.width*0.01),
                    child: ClipRRect(
                      child: Image.asset('assets/images/logo.png',height:size.height*.2,width:size.width*0.6,),
                    ),
                  ),
          Container(
              child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top:size.height*.001)),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Email ID",
                            icon: Icon(Icons.mail),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top:size.height*0.001)),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Full Name",
                            icon: Icon(Icons.person),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top:size.height*0.001)),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Mobile No.",
                            icon: Icon(Icons.call),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top:size.height*0.001)),
                        TextField(
                          obscureText:isSecurePassword,
                          decoration: InputDecoration(
                            hintText: "Password",
                            icon: Icon(Icons.lock),
                            suffixIcon: togglePassword(),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top:size.height*0.001)),
                        TextField(
                          obscureText:isSecurePassword,
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
                            icon: Icon(Icons.lock),
                            suffixIcon: togglePassword(),
                          ),
                        ),
                      ],
                    )
          ),
                  Container(
                    padding: EdgeInsets.only(top:size.height*0.01),
                    child: Row(
                      children: [
                        Radio(
                            fillColor: MaterialStateProperty.resolveWith((states){
                              if(states.contains(MaterialState.selected)) {
                                return Colors.cyan;
                              }
                              return Colors.grey;
                            }),
                            activeColor: Colors.cyan,
                            value: 1,
                            groupValue: changeValue,
                            onChanged: (value) {
                              setState((){changeValue =value!;
                              });
                            }),
                        Text("Male",style: TextStyle(fontSize: 18),),
                        Radio(
                            fillColor: MaterialStateProperty.resolveWith((states){
                              if(states.contains(MaterialState.selected)) {
                                return Colors.cyan;
                              }
                              return Colors.grey;
                            }),
                            activeColor: Colors.cyan,
                            value: 2,
                            groupValue: changeValue,
                            onChanged: (value) {
                              setState((){changeValue =value!;
                              });
                            }),
                        Text("Female",style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(size.height*0.01),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                      children:<TextSpan>[
                        TextSpan(text:"By signing up, agree to our ",style: TextStyle(fontSize: 18,color: Colors.black),),
                        TextSpan(text:"Terms and Conditions ",style: TextStyle(fontSize: 18,color: Colors.cyan)),
                        TextSpan(text:"and ",style: TextStyle(color: Colors.black,fontSize: 18)),
                        TextSpan(text:"Privacy Policy.",style: TextStyle(fontSize: 18,color: Colors.cyan)),
                      ],
                    ),
                  )),
                  Container(
                    padding: EdgeInsets.only(top:size.height*0.03),
                    child: SizedBox(
                      width: size.width*0.9,
                      child: ElevatedButton(
                        child: Text('Register',style: TextStyle(color: Colors.black,fontSize: 20),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan
                        ),
                        onPressed: (){},
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: size.width*0.15,top: size.height*0.02),
                      child: Row(
                    children: [
                      Text("Already have an account ? ",style: TextStyle(fontSize: 18),),
                      GestureDetector(
                        onTap: (){Get.to(Loginn());},
                        child: Text('Login', style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 20,
                        ),),
                      )
                    ],
                  )),

                ],
              ),
            ),
          ),
        ));
  }
}
