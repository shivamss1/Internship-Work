import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../models/about_model.dart';
import '../../services/aboutus_service.dart';

class Abouut extends StatefulWidget {
  const Abouut({Key? key}) : super(key: key);

  @override
  State<Abouut> createState() => _AbouutState();
}

class _AbouutState extends State<Abouut> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 3,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "About Us",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: SingleChildScrollView(
            child: FutureBuilder(
              future: AboutUsService().abouts(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.connectionState == ConnectionState.done) {
                  List<AboutUsModel> aabb = snapshot.data as List<AboutUsModel>;
                  return Column(children: [
                    SizedBox(height: size.height * 0.02),
                    Container(
                      padding: EdgeInsets.only(
                          left: size.width * 0.02, right: size.width * 0.02),
                      child: Container(
                        padding: EdgeInsets.only(
                            top: size.height * 0.01,
                            left: size.width * 0.01,
                            right: size.width * 0.01),
                        height: size.height * 0.11,
                        width: size.width,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: size.width * 0.001,
                                color: ColorConstant.gray500),
                            borderRadius:
                                BorderRadius.circular(size.height * 0.04)),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.04,
                                        top: size.height * 0.1)),
                                Image.network(
                                  aabb[index].appLogo.toString(),
                                  alignment: Alignment.center,
                                  height: size.height * 0.07,
                                ),
                                SizedBox(width: size.width * 0.006),
                                Text(
                                  "|",
                                  style: TextStyle(
                                      fontSize: 75,
                                      fontWeight: FontWeight.w100,
                                      color: ColorConstant.gray500),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: size.width * 0.01,
                                      top: size.height * 0.01),
                                  height: size.height * 0.1,
                                  width: size.width * 0.7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: size.height * 0.01)),
                                      Text(
                                        "CHORD FM",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Expanded(
                                          child: Text(
                                        "Love this app? Let Us Know in the Google Play Store how we can make it even better",
                                        maxLines: 3,
                                        textAlign: TextAlign.start,
                                      ))
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: size.width * 0.02, right: size.width * 0.02),
                      child: Container(
                          height: size.height * 0.37,
                          width: size.width * 0.95,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: ColorConstant.gray500),
                              borderRadius:
                                  BorderRadius.circular(size.height * 0.05)),
                          child:
                              ListView.builder(itemBuilder: (context, index) {
                            return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: size.height * 0.01)),
                                  ListTile(
                                    leading: Icon(
                                      Icons.person,
                                      color: Colors.black,
                                      size: size.height * 0.04,
                                    ),
                                    title: Text(
                                      "Company",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    subtitle:
                                        Text(aabb[index].author.toString()),
                                  ),
                                  Divider(height: size.height * 0.01),
                                  ListTile(
                                    leading: Icon(
                                      Icons.alternate_email_outlined,
                                      color: Colors.black,
                                      size: size.height * 0.04,
                                    ),
                                    title: Text(
                                      "Email",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    subtitle:
                                        Text(aabb[index].email.toString()),
                                  ),
                                  Divider(
                                    height: size.height * 0.01,
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.language_outlined,
                                      color: Colors.black,
                                      size: size.height * 0.04,
                                    ),
                                    title: Text(
                                      "Website",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    subtitle:
                                        Text(aabb[index].website.toString()),
                                  ),
                                  Divider(height: size.height * 0.01),
                                  ListTile(
                                    leading: Icon(
                                      Icons.phone,
                                      color: Colors.black,
                                      size: size.height * 0.04,
                                    ),
                                    title: Text(
                                      "Contact",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    subtitle:
                                        Text(aabb[index].contact.toString()),
                                  ),
                                ]);
                          })),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: size.height * 0.02),
                        child: Container(
                          height: size.height * 0.25,
                          width: size.width * 0.95,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: ColorConstant.gray500),
                              borderRadius:
                                  BorderRadius.circular(size.height * 0.05)),
                          child:
                              ListView.builder(itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: size.height * 0.01)),
                                ListTile(
                                  leading: Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.black,
                                    size: size.height * 0.04,
                                  ),
                                  title: Text(
                                    "Rate the App",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    "Love this app? Let Us Know in the Google Play Store how we can make it even better",
                                    maxLines: 2,
                                  ),
                                ),
                                Divider(
                                  height: size.height * 0.001,
                                ),
                                ListTile(
                                  leading: Icon(
                                    Icons.share_rounded,
                                    color: Colors.black,
                                    size: size.height * 0.04,
                                  ),
                                  title: Text(
                                    "Share",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                      "Share the app with your friends and family"),
                                ),
                                Divider(
                                  height: size.height * 0.001,
                                ),
                                ListTile(
                                  leading: Icon(
                                    Icons.info_outline,
                                    color: Colors.black,
                                    size: size.height * 0.04,
                                  ),
                                  title: Text(
                                    "Version",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle:
                                      Text(aabb[index].appVersion.toString()),
                                ),
                              ],
                            );
                          }),
                        )),
                    SizedBox(height: size.height * 0.04,),
                    Container(
                      padding: EdgeInsets.only(left:size.width*0.38),
                        child: Row(children: [
                      Text(
                        "Made with",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        ImageConstant.heart,
                        width: 30,
                      ),
                      Text(
                        "in India",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ])),
                  ]);
                }
                return Column();
              },
            ),
          ),
        ),
      ),
    ));
  }
}
