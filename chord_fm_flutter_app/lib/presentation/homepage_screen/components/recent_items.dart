import 'package:smartradio/presentation/myaudioplayer_screen/myaudioplayer_screen.dart';
import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';

import '../../../models/radiotile_item_model.dart';

class RecentItms extends StatelessWidget {
  RecentItms(this.RadioTileItemModelObj);

  final RadioTileItemModel RadioTileItemModelObj;


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Get.to(() => MyaudioplayerScreen()),
      child: IntrinsicWidth(
        child: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: getPadding(right:size.width*0.015),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant
                      .imgRectangle11, //you need to change that to url image while connecting backend
                  height: getVerticalSize(size.height*0.09),
                  width: getHorizontalSize(size.width*0.2),
                  radius: BorderRadius.circular(getHorizontalSize(6)),
                ),
                Padding(
                  padding: getPadding(top:size.height*0.01),
                  child: Text(
                    RadioTileItemModelObj.name!,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProTextBold14,
                  ),
                ),
                Text(
                  RadioTileItemModelObj.country!,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextRegular12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
