import 'dart:io';

import "package:flutter/material.dart";
import 'package:intl/intl.dart';
import 'dart:async';
import "package:flare_flutter/flare_actor.dart";
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sleep/pages/startPage.dart';
import 'package:sleep/main.dart';

Stopwatch stop = new Stopwatch();
Stopwatch stop1 = new Stopwatch();
Stopwatch sleepTime = new Stopwatch();

int dropdownInt = 7;

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  String _timeString;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _timeString = _formatDateTime(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
    stop1.stop();
    stop.stop();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    switch (state) {
      case AppLifecycleState.paused:
        if(isStart){
          stop.start();
        }
        break;
      case AppLifecycleState.resumed:
        stop.stop();
        if (this.mounted) {
          setState(() {});
        }
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.suspending:
        break;
    }
  }
  int ii = 0;
  bool boolt = false;
  Color _textColor = Color(0xff003ABA);
  bool tapped =false;
  int time;
  int countHours = 0;
  int countMinutes = 0;
  String ampm = "am";
  int dropdownInt;
  int timeLeft = 0;
  @override
  Widget build(BuildContext context) {
    switch(dropdownValue){
      case "One":
        dropdownInt = 1;
        break;
      case "Two":
        dropdownInt = 2;
        break;
        case "Three":
        dropdownInt = 3;
        break;
        case "Four":
        dropdownInt = 4;
        break;
        case "Five":
        dropdownInt = 5;
        break;
        case "Six":
        dropdownInt = 6;
        break;
        case "Seven":
        dropdownInt = 7;
        break;
        case "Eight":
        dropdownInt = 8;
        break;
        case "Nine":
        dropdownInt = 9;
        break;
        case "Ten":
        dropdownInt = 10;
        break;
        case "Eleven":
        dropdownInt = 11;
        break;
        case "Twelve":
        dropdownInt = 12;
        break;
    }
    if(isStart)
    {
    if (DateTime.now().hour > 12){
      ampm = "pm";
    }else {
      ampm = "am";
    }
    countHours = (23 - DateTime.now().hour) + dropdownInt;
    countMinutes = (60 - DateTime.now().minute);
    if (countMinutes == 60){
      countMinutes -= 60;
      countHours += 1;
    }
    }
    stop1.start();
    if (stop1.elapsedMilliseconds >= 10000) {
      boolt = true;
    }
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var hi = Column(children: [
      Container(
        child: Text("The time is",
            style: TextStyle(fontSize: 20, color: Colors.white)),
        padding: EdgeInsets.only(top: height / 22.4),
      ),
      Container(
        child: RichText(
            text: TextSpan(
                text: _timeString,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 101),
                children: <TextSpan>[
              TextSpan(
                  text: ampm,
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 42.0)),
            ])),
      ),
      Container(
        padding: EdgeInsets.only(top: height / 17),
      ),
      Container(
        padding: EdgeInsets.all(height / 44.8),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: <Widget>[
            Container(
              width: 350,
              alignment: Alignment.topCenter,
              child: Text(
                countHours.toString() + " Hours " + countMinutes.toString() + " Minutes",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff003ABA)),
                textAlign: TextAlign.start,
              ),
            ),
            Text("Till wake",
                style: TextStyle(fontSize: 16.8, fontWeight: FontWeight.w300)),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 25),
        padding: EdgeInsets.all(height / 44.8),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: <Widget>[
            Container(
              width: 350,
              alignment: Alignment.topCenter,
              child: Text(
                saa(),
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: _textColor),
                textAlign: TextAlign.start,
              ),
            ),
            Text("Spent on phone",
                style: TextStyle(fontSize: 16.8, fontWeight: FontWeight.w300)),
          ],
        ),
      ),
    Container(
            width: 400,
            height: 350,
        child: FlareActor(
          "assets/Space Ship.flr",
          animation: "Space Ship",
        )
      ),]);
    var children = <Widget>[hi];
    if (boolt) {
      children.clear();
      children.add(
        Container(
            width: width,
            height: height,
            child: FlareActor(
              "assets/fade to black (2).flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: "fade to black",
            )),
      );
    } else {
      print(tapped);
      if (tapped) {
        children.clear();
        print(children);
        children.add(Container(
           color: Color(0xff003ABA),
            width: width,
            height: height,
            child: FlareActor(
              "assets/fade to white 2.flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: "fade to white",
            )));
        stop1.reset();
      }
      if(children.isNotEmpty && tapped == false){
        children.clear();
        print("YAY");
        children.add(hi);
      }
      tapped = false;
    }
    return GestureDetector(
        onTap: () {
          if (boolt == true) {
            tapped = true;
          }
          print("tapped");
          boolt = false;
          stop1.reset();
        },
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    stops: [0.3, .9],
                    colors: [Color(0xff003593), Color(0xff003ABA)])),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: children),
              ],
            ),
          ),
        ));
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    if (this.mounted) {
      setState(() {
        _timeString = formattedDateTime;
      });
    }
  }
  var hours = 0;
  var minutes = 0;
  var seconds = 0;
  String saa() {
    MyApp.saveload();

    seconds = (milleseconds / 1000).toInt();
    minutes = (seconds / 60).toInt();
    hours = (minutes / 60).toInt();
    print(milleseconds);
    while (seconds >= 60) {
      seconds -= 60;
    }
    while (minutes >= 60) {
      minutes -= 60;
    }
    if (milleseconds > 0) {
      _textColor = Colors.red;
    } else {
      _textColor = Color(0xff003ABA);
    }
    return hours.toString() +
        " Hours \n" +
        minutes.toString() +
        " Minutes \n" +
        seconds.toString() +
        " Seconds";
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('hh:mm').format(dateTime);
  }
}
