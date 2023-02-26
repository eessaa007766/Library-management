import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:mktbh/page1.dart';
// import 'package:sizer/sizer.dart';
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
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => page1())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 15, child: Container(child: Lottie.asset('inm/cccc.json'))),
          Expanded(
              child: Container(
            child: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                strokeWidth: 4,
              ),
            ),
          )),
          Expanded(flex: 2, child: Container())
        ],
      ),
    );
  }
}
