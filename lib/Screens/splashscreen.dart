import 'dart:async';

import 'package:cc/Screens/homescreen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAF7F0),
      body: Center(
        child: Image.asset(
          'assets/images/carboncure.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}