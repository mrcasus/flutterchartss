import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterchartss/screens/homeScreen.dart';
import 'package:custom_splash/custom_splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobimAsistan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: CustomSplash(
        imagePath: 'assets/caps-product-pmsa.png',
        //backGroundColor: Colors.deepOrange,
        //backGroundColor: Color(0xfffc6042),
        animationEffect: 'fade-in',
        logoSize: 700,
        home: HomeScreen(),
        // customFunction: duringSplash,
        duration: 2500,
        type: CustomSplashType.StaticDuration,
        // outputAndHome: op,
      ),
    );
  }
}
