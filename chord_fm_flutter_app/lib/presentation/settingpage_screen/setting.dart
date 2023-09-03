import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../about_us/about.dart';

class Setting extends StatefulWidget {
  const  Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}
class _SettingState extends State<Setting> {
bool notifications=true;
  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 3,
            backgroundColor: Colors.white,
              title: Text("Settings",style: TextStyle(fontSize: 23,color: Colors.cyan)),
             leading: IconButton( onPressed: (){
                      Navigator.pop(context);
                    },icon: Icon(Icons.arrow_back_sharp,size: 27,color: Colors.cyan,),
                    ),
          ),
          body: ListView(
            children: [
              Padding(padding: const EdgeInsets.only(top: 20.0)),
              ListTile(
                  title: Text('Cache',style: TextStyle(fontSize: 20)),
                  subtitle: Text('Clear cache date',style: TextStyle(fontSize: 17)),
                  leading: Image.asset('assets/images/sweeping.png',height: 35),
                onTap: (){},
                ),
              Divider(),
              ListTile(
                  title: Text('Enable Push Notification',style: TextStyle(fontSize: 20)),
                  subtitle: Text('On/Off Notification',style: TextStyle(fontSize: 17)),
                  leading: Image.asset('assets/images/bell.png',height: 35),
                  trailing: Transform.scale(scale:1.3,
                  child:Switch(
                    activeColor: Colors.cyan,
                    value: notifications,
                    onChanged: (value){
                      setState((){notifications=value;});
                    },
                  ),
                  ),
                onTap: (){},
                ),
              Divider(),
              ListTile(
                  title: Text('Now Playing',style: TextStyle(fontSize: 20)),
                  subtitle: Text('Customize your now playing screen',style: TextStyle(fontSize: 17)),
                  leading: Image.asset('assets/images/index.png',height: 35),
                onTap: (){},
                ),
              Divider(),
              ListTile(
                  title: Text('Drive Mode',style: TextStyle(fontSize: 20)),
                  subtitle: Text('Customize your drive mode player screen',style: TextStyle(fontSize: 17)),
                  leading: Image.asset('assets/images/car.png',height: 35),
                onTap: (){},
                ),
              Divider(),
              ListTile(
                  title: Text('Personalize',style: TextStyle(fontSize: 20)),
                  subtitle: Text('Customize your UI controls',style: TextStyle(fontSize: 17)),
                  leading: Image.asset('assets/images/bubble.png',height: 35),
                onTap: (){},
                ),
              Divider(),
              ListTile(
                  title: Text('Privacy Policy',style: TextStyle(fontSize: 20)),
                  subtitle: Text('This app privacy policy',style: TextStyle(fontSize: 17)),
                  leading: Image.asset('assets/images/privacyPolicy.png',height: 35),
                onTap: (){
                   
                },
                ),
              Divider(),
              ListTile(
                  title: Text('Terms and Conditions',style: TextStyle(fontSize: 20)),
                  subtitle: Text('This app terms and Conditions',style: TextStyle(fontSize: 17)),
                  leading: Image.asset('assets/images/terms.png',height: 35),
                onTap: (){},
                ),
              Divider(),
              ListTile(
                  title: Text('About Us',style: TextStyle(fontSize: 20)),
                  subtitle: Text('Customize your now playing screen',style: TextStyle(fontSize: 17)),
                  leading: Image.asset('assets/images/info.png',height: 35),
                onTap: (){
                    Get.to(Abouut());
                },
                ),
              Divider(),
            ],
          ),
        )
    );
  }
}