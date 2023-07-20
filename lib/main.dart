import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:me_book/core/core.dart';
import 'package:me_book/screens/landing_page.dart';
import 'package:me_book/screens/login_page.dart';

void main() {
  runApp(Phoenix(child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeBook',
      theme: AppColors.themeColor,
      // debugShowCheckedModeBanner: false,
      // showSemanticsDebugger: false,
      // home: const LandingScreen(),
      home: const LoginPage(),
    );
  }
}
