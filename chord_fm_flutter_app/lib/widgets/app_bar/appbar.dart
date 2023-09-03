import 'package:flutter/material.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import 'appbar_image.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});
  Size get preferredSize => Size(
        size.width,
        height,
      );
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: getVerticalSize(56),
      leadingWidth: 44,
      leading: Builder(
        builder: ( context) {
          return IconButton(
              onPressed: ()=>Scaffold.of(context).openDrawer(), icon: Icon(Icons.menu, color: Colors.white));
        }
      ),
      centerTitle: true,
      title: AppbarImage(
        height: getVerticalSize(34),
        width: getHorizontalSize(161),
        imagePath: ImageConstant.logo,
      ),
      actions: [
        IconButton(
            onPressed: () {
              showDialog<void>(context: context, builder:(context) {
                return AlertDialog(
                  title: Center(child: Text('ADD NEW RADIO STATION',style: TextStyle(color: Colors.cyan),)),
                  backgroundColor: Colors.white,
                  content: Container(
                    height: 330,
                    width: 340,
                    child: Column(
                      children: [
                        Padding(padding: const EdgeInsets.only(top: 9.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Radio Name'
                          ),
                        ),),
                        Padding(padding: const EdgeInsets.only(top: 9.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Enter Website URL'
                            ),
                          ),),
                        Padding(padding: const EdgeInsets.only(top: 9.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Enter Streaming URL'
                            ),
                          ),),
                          Padding(padding: const EdgeInsets.only(top:40.0)),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan,fixedSize: const Size(350,40)),
                            child: const Text('SUBMIT REQUEST',style: TextStyle(color:Colors.black),),
                            onPressed: (){
                            },
                          ),
                          Padding(padding: const EdgeInsets.only(top: 15.0)),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan,fixedSize: const Size(350, 40)
                            ),
                            child: const Text('CANCEL',style: TextStyle(color:Colors.black),),
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                          )
                      ],
                    ),
                  ),

                );

              });
            },
            icon: Icon(Icons.add_box_outlined, color: Colors.white)),
      ],

    );
  }
}
