import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mktbh/home/home2.dart';
import 'package:mktbh/home/home3.dart';
import 'package:mktbh/home/home4.dart';
import 'package:mktbh/home/home5.dart';

import 'home/home1.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  int sel = 4;
  List<Widget> wid = [home5(), home4(), home3(), home2(), home1()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 90,
        backgroundColor: Colors.indigo.shade900,
        title: BottomNavigationBar(
          showUnselectedLabels: true,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.indigo.shade900,
          currentIndex: sel,
          //  backgroundColor: Colors.blue,
          onTap: (index) {
            setState(() {
              sel = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                label: "علوم الحياة",
                icon: Icon(
                  Icons.message,
                  size: 35,
                  // color: Colors.indigo.shade900,
                )),
            BottomNavigationBarItem(
                label: "الرياضيات",
                icon: Icon(
                  Icons.menu,
                  size: 30,
                  // color: Colors.indigo.shade900,
                )),
            BottomNavigationBarItem(
                label: "التاريخ",
                icon: Icon(
                  Icons.person,
                  size: 35,
                  //  color: Colors.indigo.shade900,
                )),
            BottomNavigationBarItem(
                label: "رسائل ماجستير",
                icon: Icon(
                  Icons.book,
                  size: 35,

                  /// color: Colors.indigo.shade900,
                )),
            BottomNavigationBarItem(
                label: "الحاسبات",
                icon: Icon(
                  Icons.laptop,
                  size: 35,

                  /// color: Colors.indigo.shade900,
                )),
          ],
        ),
      ),
      body: wid.elementAt(sel),
    );
  }
}
