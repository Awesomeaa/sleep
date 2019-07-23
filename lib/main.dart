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
bool nameSave = true;
bool nameBool = true;
int countMilli = 0;
int addCountMilli = 0;
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  
  static clearMilli(){
    void clear() async{
      final prefs = await SharedPreferences.getInstance();
      prefs.remove('milli');
    }
    void awaitclear() async{
      await clear();
    }
    awaitclear();
  }

  static saveload() {
    void Save() async{
      final prefs = await SharedPreferences.getInstance();
      prefs.setInt('milli', milleseconds);
      prefs.setString("name", name) ?? '';
      prefs.setInt('night', nightSave);
      prefs.setStringList('phoneTimeList', phoneTimeList);
    }
    void Load() async{
      final prefs = await SharedPreferences.getInstance();
      addmilli = prefs.getInt('milli');
      name = prefs.getString('name');
      nightSave = prefs.getInt('night') ?? 0;
      phoneTimeList = prefs.getStringList('phoneTimeList');
      //print("oof" + name);
    }

    void nameLoad() async{
      final prefs = await SharedPreferences.getInstance();
      name = prefs.getString('name');
    }

    void awaitsave() async{
      await Save();
    }
    awaitsave();
    
    if (nameBool){
      nameLoad();
      nameBool = false;
    }
    if(!isStart){
      addmilli = 0;
    }
    if (!startup){
      Load();
      startup = !startup;
    }else {
      milleseconds = addmilli + stop.elapsedMilliseconds;
    }
  }
  Widget build(BuildContext context) {
    if(name == null || name == "")
    {
      name = "Name";
    }
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