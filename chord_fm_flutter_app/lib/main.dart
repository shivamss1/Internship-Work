import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:smartradio/controllers/homepage_controller.dart';
import 'package:smartradio/controllers/selectcity_controller.dart';
import 'package:smartradio/presentation/splash_screen.dart';
import 'package:smartradio/services/firebase_services.dart';
import 'core/app_export.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(SelectcityController());
  Get.put(HomepageController());
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Future.delayed(1.seconds);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context)=>ChangeNotifierProvider(
    create: (context) => FirebaseServices(),
    child: GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppLocalization(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),
      title: 'ChordFM',
      home: SplashScreen(),
  )
  );
}
