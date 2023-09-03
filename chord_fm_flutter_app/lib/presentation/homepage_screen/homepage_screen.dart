import 'package:like_button/like_button.dart';
import 'package:smartradio/presentation/myaudioplayer_screen/myaudioplayer_screen.dart';
import 'package:smartradio/widgets/app_bar/appbar.dart';
import 'package:smartradio/widgets/app_bar/navbar.dart';
import 'components/recent_items.dart';
import 'components/radio_tile.dart';
import '../../controllers/homepage_controller.dart';
import '../../models/radiotile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';
import 'package:smartradio/widgets/custom_text_form_field.dart';

class HomepageScreen extends GetWidget<HomepageController> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: NavBar(),
          backgroundColor: ColorConstant.lightGrey,
          body: Container(
            width: size.width,
            child: SingleChildScrollView(
              child: Column(
                  children: [
                    Container(
                      width: size.width,
                      decoration: AppDecoration.fillGray80001,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MyAppBar(),
                          Padding(
                            padding: getPadding(left:size.width*0.04, top:size.height*0.01),
                            child: Text(
                              "lbl_recently_listed".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSFProTextRegular16,
                            ),
                          ),
                          Container(
                              padding:EdgeInsets.all(size.height*0.01),
                              height: getVerticalSize(size.height*0.17),
                              child: ListView.builder(
                                padding: getPadding(left:size.width*0.03, top:size.height*0.001),
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: controller
                                    .RadioTileItemModelRecentObj.value.length,
                                itemBuilder: (context, index) {
                                  RadioTileItemModel model = controller
                                      .RadioTileItemModelRecentObj.value[index];
                                  return RecentItms(model);
                                },
                              ),
                            ),
                          Divider(color: ColorConstant.lightGrey, thickness: 1.6),
                          TabBar(
                            // isScrollable: true,
                            // padding: EdgeInsets.symmetric(horizontal: 800),
                            // labelStyle: TextStyle(fontWeight: FontWeight.w),
                            unselectedLabelStyle:
                            TextStyle(fontSize: getSize(15)),
                            labelStyle: TextStyle(fontSize: getSize(15)),
                            indicatorWeight: 3.2,
                            unselectedLabelColor: Colors.white,
                            labelColor: ColorConstant.cyan500,
                            indicatorColor: ColorConstant.cyan500,
                            tabs: [
                              Tab(text: "Favourite"),
                              Tab(text: "All"),
                              Tab(text: "Region"),
                              Tab(text: "Language")
                            ],
                          ),
                        ],
                      ),
                    ),
                    Obx(
                          () => Column(
                        children: [
                          Container(
                            height:size.height*0.7,
                            child:TabBarView(
                                children: [
                                  //TabBar 1 for Favourites
                                  Container(
                                    height:size.height*0.6,
                                    margin: EdgeInsets.only(top:size.height*0.015,bottom:size.height*0.015),
                                    width: size.width,
                                    decoration: AppDecoration.fillGray800,
                                    child: ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .RadioTileItemModelObj.value.length,
                                      itemBuilder: (context, index) {
                                        RadioTileItemModel model = controller
                                            .RadioTileItemModelRecentObj
                                            .value[index];
                                        return RadioTile(model);
                                      },
                                    ),
                                  ),
                                  //TabBar 2 for All
                                  Container(
                                    height:size.height*0.7,
                                    width: size.width,
                                    margin: getMargin(top:size.height*0.015),
                                    decoration: AppDecoration.fillGray800,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          CustomTextFormField(
                                            width:size.width*0.8,
                                            focusNode: FocusNode(),
                                            controller:
                                            controller.radiosearchbarController,
                                            hintText: "msg_search_by_radio".tr,
                                            textInputAction: TextInputAction.done,
                                          ),
                                          Padding(padding: EdgeInsets.only(top:size.height*0.01)),
                                          Container(
                                            height: getVerticalSize(size.height*0.57),
                                            child:                                       ListView.builder(
                                              physics: BouncingScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: controller
                                                  .RadioTileItemModelObj.value.length,
                                              itemBuilder: (context, index) {
                                                RadioTileItemModel model = controller
                                                    .RadioTileItemModelRecentObj
                                                    .value[index];
                                                return RadioTile(model);
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  //TabBar 3  for Region
                                  Container(
                                    height:size.height*0.6,
                                    margin: EdgeInsets.only(top:size.height*0.015,bottom:size.height*0.015),
                                    width: size.width,
                                    decoration: AppDecoration.fillGray800,
                                    child: ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .RadioTileItemModelObj.value.length,
                                      itemBuilder: (context, index) {
                                        RadioTileItemModel model = controller
                                            .RadioTileItemModelRecentObj
                                            .value[index];
                                        return RadioTile(model);
                                      },
                                    ),
                                  ),
                                  //TabBar 4 for Language
                                  Container(
                                    width: size.width,
                                    height:size.height*0.7,
                                    margin: getMargin(top:size.height*0.015),
                                    decoration: AppDecoration.fillGray800,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          CustomTextFormField(
                                            width:size.width*0.8,
                                            focusNode: FocusNode(),
                                            controller:
                                            controller.languageSearchController,
                                            hintText: "Search Language",
                                            textInputAction: TextInputAction.done,
                                          ),
                                          Padding(padding: EdgeInsets.only(top:size.height*0.01)),
                                          Container(
                                            height: getVerticalSize(size.height*0.57),
                                            child: ListView.builder(
                                              physics: BouncingScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: 20,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding: EdgeInsets.only(left:size.width*0.02),
                                                  child: SizedBox(
                                                    height: getVerticalSize(size.height*0.05),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "lbl_latin".tr,
                                                          overflow:
                                                          TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle
                                                              .txtSFProTextRegular16,
                                                        ),
                                                        Spacer(),
                                                        Checkbox(
                                                            value: true,
                                                            onChanged: (e) {},
                                                            activeColor:
                                                            ColorConstant.cyan500,
                                                            checkColor:
                                                            ColorConstant.lightGrey)
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      ]),
                    ),
                    GestureDetector(
                      onTap: (){Get.to(MyaudioplayerScreen());},
                      child: Container(
                        height: getVerticalSize(size.height*0.08),
                        color: (ColorConstant.gray80001),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: getHorizontalSize(size.width*0.02)),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle10,
                                height: getSize(size.height*0.07),
                                width: getSize(size.width*0.17),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(size.width*0.05),
                                ),
                                margin: getMargin(bottom: 1),
                              ),
                              SizedBox(width: getHorizontalSize(size.width*0.02)),
                              Text(
                                "lbl_nova".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSFProTextBold14,
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: (){},
                                child: Icon(Icons.play_arrow,
                                        color: Colors.grey, size:size.height*0.06),
                              ),
                              SizedBox(width: getHorizontalSize(size.width*0.01)),
                              LikeButton(
                                bubblesColor: BubblesColor(dotPrimaryColor: Colors.red, dotSecondaryColor: Colors.pinkAccent,),
                              ),
                              SizedBox(width: getHorizontalSize(size.width*0.01)),
                            ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }
}

