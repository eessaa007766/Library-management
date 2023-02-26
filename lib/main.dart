import 'package:flutter/material.dart';
import 'package:mktbh/SplashScreen.dart';
import 'package:mktbh/users/page1.dart';

void main() {
  runApp(const MyApp());
}

///  git commit -m "Library-management"
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        home: SplashScreen(),
        routes: {
          "page1": (context) => page1(),
        });
  }
}
