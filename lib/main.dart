import 'package:flutter/material.dart';
import 'package:sleep/pages/startPage.dart';
import 'package:sleep/pages/statisticsPage.dart';
import "pages/homePage.dart";
import 'pages/aboutPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

int milleseconds = 0;
int addmilli = 0;
var startup = false;
String name = "name";
bool nameSave = true;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  
  static saveload() {
    void Save() async{
      final prefs = await SharedPreferences.getInstance();
      prefs.setInt('milli', milleseconds);
      prefs.setString("name", name) ?? '';
    }
    void Load() async{
      final prefs = await SharedPreferences.getInstance();
      addmilli = prefs.getInt('milli');
      name = prefs.getString('name');
      print("oof" + name);
    }

    void awaitsave() async{
      await Save();
    }
    awaitsave();
    
    if (!startup){
      Load();
      startup = !startup;
    }else {
      milleseconds = addmilli + stop.elapsedMilliseconds;
    }
  }

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