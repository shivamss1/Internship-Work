
import '../../controllers/searchingradio_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';

class SearchingradioScreen extends GetWidget<SearchingradioController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.lightGrey,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 58,
            top: 83,
            right: 58,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.logo,
                height: getSize(111),
                width: getSize(111),
              ),
              Padding(
                padding: getPadding(
                  top: 48,
                ),
                child: Text(
                  "msg_please_wait_for".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextBold18,
                ),
              ),
              Container(
                width: getHorizontalSize(199),
                margin: getMargin(
                  top: 12,
                  bottom: 5,
                ),
                child: Text(
                  "msg_we_are_searching".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtSFProTextRegular14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
