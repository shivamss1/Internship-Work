import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';
import 'package:smartradio/services/firebase_services.dart';

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);


  @override
  State<Phone> createState() => _PhoneState();
}
var countryCode="";
var phoneNumber="";
class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
            home: Scaffold(
              extendBodyBehindAppBar: true,
              appBar: AppBar(backgroundColor:Colors.transparent,elevation:0,leading: IconButton( icon:Icon(Icons.arrow_back_ios_new_rounded,color: Colors.cyan,) ,onPressed: (){Navigator.pop(context);},),),
              backgroundColor: Colors.white,
              body: Container(
                child: SingleChildScrollView(
                  child: Column(
                  children:[
                   Container(
                    padding: EdgeInsets.only(left:size.width*0.01,top:size.height*0.01),
                      child: Image.asset(ImageConstant.person,width:size.width,)
                  ),
                  Container(
                    padding: EdgeInsets.only(top:size.height*0.01),
                      child:Text('Login with Phone No',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.cyan),)
                  ),
                   Container(
                     padding: EdgeInsets.only(top:size.height*0.02,bottom:size.height*0.02 ),
                       child: Text('Enter Your Mobile NO ',style: TextStyle(fontSize:18,color: Colors.cyan),textAlign:TextAlign.center,)
                   ),
                   Container(
                         padding: EdgeInsets.only(top:size.height*0.001),
                         decoration: BoxDecoration(
                           border: Border.all(width:size.width*0.001,color: Colors.grey),
                           borderRadius: BorderRadius.circular(12)
                         ),
                        child: Row(
                          children: [
                            SizedBox(width: 15,),
                            SizedBox(
                              width: size.width*0.08,
                              child: TextField(
                                onChanged: (value){
                                  countryCode=value ;
                                },
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "+91",
                                ),
                              ),
                            ),
                            Text('|',style: TextStyle(fontSize: 33,color: Colors.grey),),
                            SizedBox(width: 10,),
                            SizedBox(
                              width: size.width*0.70,
                              child: TextField(
                                keyboardType: TextInputType.phone,
                              onChanged: (value){
                                  phoneNumber=value;
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Phone NO"
                                ),
                              ),
                            )
                          ],
                        ),
                   ),
                   Container(
                     padding: EdgeInsets.only(top:size.height*0.03),
                       child: SizedBox(
                         height: size.height*0.05,
                         width: size.width*0.88,
                         child: ElevatedButton(
                           onPressed: ()async{
                            await FirebaseServices().signInWithPhone(countryCode,phoneNumber);
                           },
                           child: Text('Send the Code'),
                           style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.cyan,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(12)
                           )
                         ),
                         ),
                       )
                   ),
            ]),
                ),
              ),
            )
        )
    );
  }
}
