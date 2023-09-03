import 'package:like_button/like_button.dart';
import 'package:smartradio/presentation/myaudioplayer_screen/myaudioplayer_screen.dart';
import '../../../models/radiotile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';

class RadioTile extends StatelessWidget {
  RadioTile(this.listrectangletenItemModelObj);
  final RadioTileItemModel listrectangletenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => MyaudioplayerScreen()),
      child: Container(
        width: size.width,
        padding: getPadding(left: 16, top: 8, right: 16, bottom: 8),
        decoration: AppDecoration.fillGray800,
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle10,
              height: getSize(47.00),
              width: getSize(47.00),
              radius: BorderRadius.circular(
                getHorizontalSize(6.00),
              ),
              margin: getMargin(bottom: 1),
            ),
            Padding(
              padding: getPadding(left: 14, top: 6, bottom: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_nova".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProTextBold14,
                  ),
                  Padding(
                    padding: getPadding(left: 1, top: 2),
                    child: Text(
                      "msg_australia_english".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextRegular12,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            LikeButton(bubblesColor:const BubblesColor(dotPrimaryColor: Colors.red, dotSecondaryColor: Colors.pinkAccent),),
            PopUpMen(menuList: [
              PopupMenuItem(child: ListTile(
                leading: Icon(Icons.share_rounded,color: Colors.black,),
                title: Text('Share',style: TextStyle(fontSize: 18),),
              ))
            ],icon:Icon(Icons.more_vert,color: Colors.grey,)),
          ],
        ),
      ),
    );
  }
}

class PopUpMen extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget ? icon ;
  const PopUpMen({Key? key, required this.menuList, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder:((context)=>menuList),
      icon: icon,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
    );
  }
}
