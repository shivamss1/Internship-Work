import 'package:smartradio/presentation/homepage_screen/homepage_screen.dart';
import 'package:smartradio/presentation/selectcity_screen/countrylist.dart';
import 'package:smartradio/widgets/custom_text_form_field.dart';
import '../../controllers/selectcity_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';

class SelectcityScreen extends StatelessWidget {
  final controller = Get.find<SelectcityController>();

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.lightGrey,
            body: Container(
                child: SingleChildScrollView(
                  child: Column(
                      children:[
                    Container(
                      padding: EdgeInsets.only(left:size.width*0.02),
                        child: Image.asset(ImageConstant.logo,width:size.width*0.2,)
                    ),
            Container(
                          height: getVerticalSize(size.height*0.06),
                          width: getHorizontalSize(size.width*0.6),
                          padding: EdgeInsets.only(top:size.height*0.01,left:size.width*0.01,right: size.width*0.01),
                          child: CustomTextFormField(),
                        ),
                    Container(
                        height: getSize(size.height*0.7),
                        padding:EdgeInsets.only(top:size.height*0.01),
                        child: Country()
                    ),
                    Container(
                      padding: EdgeInsets.only(top:size.height*0.01),
                      child: FloatingActionButton(
                              backgroundColor: Colors.cyan,
                                onPressed:(){
                                  Get.to(HomepageScreen());
                                } ,
                                child: Icon(Icons.navigate_next,color: Colors.white,),
                              ),
                    ),
                    ]),
                )
                )
        ));
  }
}
