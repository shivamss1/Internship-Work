import 'package:smartradio/presentation/homepage_screen/homepage_screen.dart';
import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';

import '../../../models/selectcity_item_model.dart';

class SelectcityItemWidget extends StatelessWidget {
  SelectcityItemWidget(this.selectcityItemModelObj);
  final SelectcityItemModel selectcityItemModelObj;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => HomepageScreen()),
      child: Container(
        width: size.width,
        padding: getPadding(
          left: 17,
          top: 7,
          right: 17,
          bottom: 7,
        ),
        decoration: AppDecoration.fillGray800,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(bottom: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    selectcityItemModelObj.city!,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProTextBold14,
                  ),
                  Padding(
                    padding: getPadding(left: 1, top: 1),
                    child: Text(
                      selectcityItemModelObj.country!,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextRegular12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: getSize(20),
                width: getSize(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(243),
                    border: Border.all(color: Colors.white),
                    color: Colors.transparent))
          ],
        ),
      ),
    );
  }
}
