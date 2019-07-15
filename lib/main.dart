import 'package:flutter/material.dart';
import 'package:sleep/pages/startPage.dart';
import 'package:sleep/pages/statisticsPage.dart';
import "pages/homePage.dart";
import 'pages/aboutPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          StartPage(),
          PageView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              HomePage(),
              AboutPage(),
              StatisticsPage()
              ],)
        ],
      ),
      );
  }
}