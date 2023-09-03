import '../../controllers/languages_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';
import 'package:smartradio/core/utils/validation_functions.dart';
import 'package:smartradio/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class LanguagesScreen extends GetWidget<LanguagesController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.lightGrey,
        body: Form(
          key: _formKey,
          child: Container(
            width: size.width,
            margin: getMargin(
              top: 356,
            ),
            decoration: AppDecoration.fillGray800,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomTextFormField(
                  width: 335,
                  focusNode: FocusNode(),
                  controller: controller.radiosearchbarController,
                  hintText: "msg_search_by_radio".tr,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.center,
                  validator: (value) {
                    if (!isText(value)) {
                      return "Please enter valid text";
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: getPadding(
                    left: 20,
                    top: 21,
                  ),
                  child: Text(
                    "lbl_select_language".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProTextRegular12Gray500,
                  ),
                ),
                Container(
                  width: size.width,
                  margin: getMargin(
                    top: 10,
                  ),
                  padding: getPadding(
                    left: 20,
                    top: 8,
                    right: 20,
                    bottom: 8,
                  ),
                  decoration: AppDecoration.fillGray800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_latin".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSFProTextRegular16,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgCheckmark,
                        height: getSize(20),
                        width: getSize(20),
                        margin: getMargin(
                          bottom: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  padding: getPadding(
                    left: 20,
                    top: 8,
                    right: 20,
                    bottom: 8,
                  ),
                  decoration: AppDecoration.fillGray800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_sloveinian".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSFProTextRegular16,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgCheckmark,
                        height: getSize(20),
                        width: getSize(20),
                        margin: getMargin(
                          bottom: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: getVerticalSize(1),
                    width: getHorizontalSize(335),
                    margin: getMargin(
                      top: 16,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray600,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 20,
                    top: 15,
                  ),
                  child: Text(
                    "lbl_select_language".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProTextRegular12Gray500,
                  ),
                ),
                Container(
                  width: size.width,
                  margin: getMargin(
                    top: 11,
                  ),
                  padding: getPadding(
                    left: 20,
                    top: 8,
                    right: 20,
                    bottom: 8,
                  ),
                  decoration: AppDecoration.fillGray800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_arabic".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSFProTextRegular16,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgComputer,
                        height: getSize(20),
                        width: getSize(20),
                        margin: getMargin(
                          right: 1,
                          bottom: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  padding: getPadding(
                    left: 20,
                    top: 7,
                    right: 20,
                    bottom: 7,
                  ),
                  decoration: AppDecoration.fillGray800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 2,
                        ),
                        child: Text(
                          "lbl_bengalo".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProTextRegular16,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgComputer,
                        height: getSize(20),
                        width: getSize(20),
                        margin: getMargin(
                          right: 1,
                          bottom: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  padding: getPadding(
                    left: 20,
                    top: 8,
                    right: 20,
                    bottom: 8,
                  ),
                  decoration: AppDecoration.fillGray800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_chinese".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSFProTextRegular16,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgComputer,
                        height: getSize(20),
                        width: getSize(20),
                        margin: getMargin(
                          right: 1,
                          bottom: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  padding: getPadding(
                    left: 20,
                    top: 7,
                    right: 20,
                    bottom: 7,
                  ),
                  decoration: AppDecoration.fillGray800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 2,
                        ),
                        child: Text(
                          "lbl_english".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProTextRegular16,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgComputer,
                        height: getSize(20),
                        width: getSize(20),
                        margin: getMargin(
                          right: 1,
                          bottom: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  padding: getPadding(
                    left: 20,
                    top: 8,
                    right: 20,
                    bottom: 8,
                  ),
                  decoration: AppDecoration.fillGray800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_french".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSFProTextRegular16,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgComputer,
                        height: getSize(20),
                        width: getSize(20),
                        margin: getMargin(
                          right: 1,
                          bottom: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          width: size.width,
          margin: getMargin(
            bottom: 7,
          ),
          padding: getPadding(
            left: 20,
            top: 7,
            right: 20,
            bottom: 7,
          ),
          decoration: AppDecoration.fillGray800,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: getPadding(
                  top: 2,
                ),
                child: Text(
                  "lbl_bengalo".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextRegular16,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgComputer,
                height: getSize(20),
                width: getSize(20),
                margin: getMargin(
                  right: 1,
                  bottom: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
