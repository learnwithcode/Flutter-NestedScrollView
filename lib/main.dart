import 'package:flutter/material.dart';
import 'package:insta/screen.dart/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Profile',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF192229),
        brightness: Brightness.dark,
        primaryColor: Color(0xFF0E171E),
        accentColor: Color(0xFF1B252F),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          headline2: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            color: Color(0xFFE2E5E9),
          ),
          headline3: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF79B8F3),
          ),
          headline4: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF79B8F3),
          ),
          headline5: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
            color: Color(0xFF8197A4),
          ),
          headline6: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: Color(0xFFE2E5E9),
          ),
        ),
      ),
      home: Profile(),
    );
  }
}
