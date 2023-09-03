import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';
import 'package:smartradio/presentation/login_screen/login.dart';
import 'package:smartradio/presentation/settingpage_screen/setting.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            margin: EdgeInsets.only(bottom: 1),
            decoration: BoxDecoration(
              color: ColorConstant.lightGrey,
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Image.asset(
                ImageConstant.logo,
                height: 50,
                width: 50,
              ),
              Text(
                'Chord FM\nMade with Love in India',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          Column(
            children: [
              ListTile(
                title: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        ImageConstant.home,
                        height: 25,
                      ),
                      padding: EdgeInsets.only(right: 13),
                    ),
                    Container(
                        child: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        ImageConstant.playlist,
                        height: 25,
                      ),
                      padding: EdgeInsets.only(right: 13),
                    ),
                    Container(
                        child: Text(
                      'Latest',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        ImageConstant.trending,
                        height: 25,
                      ),
                      padding: EdgeInsets.only(right: 13),
                    ),
                    Container(
                        child: Text(
                      'MostView',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        ImageConstant.folders,
                        height: 25,
                      ),
                      padding: EdgeInsets.only(right: 13),
                    ),
                    Container(
                        child: Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        ImageConstant.recent,
                        height: 25,
                      ),
                      padding: EdgeInsets.only(right: 13),
                    ),
                    Container(
                        child: Text(
                      'RecentView',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        ImageConstant.countries,
                        height: 25,
                      ),
                      padding: EdgeInsets.only(right: 13),
                    ),
                    Container(
                        child: Text(
                      'Countries',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        ImageConstant.podcast,
                        height: 25,
                      ),
                      padding: EdgeInsets.only(right: 13),
                    ),
                    Container(
                        child: Text(
                      'Podcasts',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        ImageConstant.fav,
                        height: 25,
                      ),
                      padding: EdgeInsets.only(right: 13),
                    ),
                    Container(
                        child: Text(
                      'Favourite',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        ImageConstant.rec,
                        height: 25,
                      ),
                      padding: EdgeInsets.only(right: 13),
                    ),
                    Container(
                        child: Text(
                      'Recording',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        ImageConstant.suggest,
                        height: 25,
                      ),
                      padding: EdgeInsets.only(right: 13),
                    ),
                    Container(
                        child: Text(
                      'Suggestion',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        ImageConstant.setting,
                        height: 25,
                      ),
                      padding: EdgeInsets.only(right: 13),
                    ),
                    Container(
                        child: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
                  ],
                ),
                onTap: () {
                  Get.to(Setting());
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        ImageConstant.login,
                        height: 25,
                      ),
                      padding: EdgeInsets.only(right: 13),
                    ),
                    Container(
                        child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
                  ],
                ),
                onTap: () {
                  Get.to(Loginn());
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
