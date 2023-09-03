import 'package:like_button/like_button.dart';
import 'package:smartradio/widgets/app_bar/appbar.dart';
import 'package:smartradio/widgets/app_bar/navbar.dart';
import '../../controllers/myaudioplayer_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';

class MyaudioplayerScreen extends GetWidget<MyaudioplayerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavBar(),
        backgroundColor: ColorConstant.lightGrey,
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyAppBar(),
              // SizedBox(height: size.height * 0.1),
              InkWell(
                  onTap: () {
                    Get.back();
                    //Get.find<HomepageController>().auidoSheetVisibility(true);
                  },
                  child: Center(
                    child: Icon(Icons.keyboard_arrow_down_sharp,
                        size: 50, color: Colors.white),
                  )),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle11,
                height: getVerticalSize(230),
                width: getHorizontalSize(254),
                radius: BorderRadius.circular(
                  getHorizontalSize(10),
                ),
                margin: getMargin(top: 16),
              ),
              Padding(
                padding: getPadding(top: 30),
                child: Text(
                  "lbl_fox_101_9_fm".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextRegular20,
                ),
              ),
              Padding(
                padding: getPadding(top: 4),
                child: Text(
                  "lbl_australia".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextRegular14Cyan500,
                ),
              ),
              Padding(
                padding: getPadding(top: 29),
                child: Text(
                  "msg_favourite_bits_with".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextRegular14,
                ),
              ),
              Padding(
                padding: getPadding(left: 14, top: 40, right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.bluetooth, color: Colors.white)),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon:
                            Icon(Icons.fast_rewind_sharp, color: Colors.white)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.play_arrow, color: Colors.white)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.fast_forward_sharp,
                            color: Colors.white)),
                    Spacer(),
                    LikeButton(bubblesColor:const BubblesColor(dotPrimaryColor: Colors.red, dotSecondaryColor: Colors.pinkAccent),
                    /*GestureDetector(
                      child: CustomImageView(
                        svgPath: ImageConstant.favoriteButton,
                        height: getVerticalSize(17),
                        width: getHorizontalSize(19),
                        margin: getMargin(
                          top: 6,
                          bottom: 7,
                        ),
                      ),
                    ),*/
                    )
                  ],
                ),
              ),
              Padding(
                padding: getPadding(top: 34),
                child: Text(
                  "msg_your_favourite_radio".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextRegular14,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(top: 22),
                  child: SizedBox(
                    height: getVerticalSize(90),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 14,
                        itemBuilder: (context, index) => ReleventItems()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReleventItems extends StatelessWidget {
  const ReleventItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(3),
        child: CustomImageView(
          imagePath: ImageConstant.imgRectangle11,
          // height: getSize(50),
          width: getSize(80),
          radius: BorderRadius.circular(
            getHorizontalSize(6),
          ),
        ),
      ),
    );
  }
}
