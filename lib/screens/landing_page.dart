import 'package:flutter/material.dart';
import 'package:me_book/elements/appbar.dart';
import 'package:me_book/screens/main_page.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  LandingScreenState createState() => LandingScreenState();
}

class LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context),
      body: const LandingScreenContent(),
    );
  }
}

class LandingScreenContent extends StatelessWidget {
  const LandingScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainPage();
  }
}
