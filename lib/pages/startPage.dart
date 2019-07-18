import "package:flutter/material.dart";
import 'dart:async';
import 'package:sleep/main.dart';
import 'homePage.dart';

bool isNone = false;
String dropdownValue;
bool isStart = false;
final textFieldController = TextEditingController();
class StartPage extends StatefulWidget {
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer t) => stateSet());
  }

  @override
  void dispose(){
    
  }
  String name = "Name";
  @override
  Widget build(BuildContext context) {
    switch(dropdownValue){
      case "One":
        dropdownInt = 1;
        isNone = false;
        break;
      case "Two":
        dropdownInt = 2;
        isNone = false;
        break;
        case "Three":
        dropdownInt = 3;
        isNone = false;
        break;
        case "Four":
        dropdownInt = 4;
        isNone = false;
        break;
        case "Five":
        dropdownInt = 5;
        isNone = false;
        break;
        case "Six":
        dropdownInt = 6;
        isNone = false;
        break;
        case "Seven":
        dropdownInt = 7;
        isNone = false;
        break;
        case "Eight":
        dropdownInt = 8;
        isNone = false;
        break;
        case "Nine":
        dropdownInt = 9;
        isNone = false;
        break;
        case "Ten":
        dropdownInt = 10;
        isNone = false;
        break;
        case "Eleven":
        dropdownInt = 11;
        isNone = false;
        break;
        case "Twelve":
        dropdownInt = 12;
        isNone = false;
        break;
        case "None":
        isNone = true;
        break;
    }
    String hi = dropdownInt.toString() + ":00";
    String marker = "am";
    if(isNone){
      hi = "None";
      marker = " ";
    }
    MyApp.saveload();
    if (textFieldController.text != ''){
      name = textFieldController.text;
      nameBool = true;
    }
    print(name);
    //print(textFieldController.text);
    
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
          body: Container(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff003ABA)
            /*
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  stops: [0.3, .9],
                  colors: [Color(0xff003593), Color(0xff003ABA)])
                  Container(
                padding: EdgeInsets.all(20),

                child: TextField(
                  controller: textFieldController,
                  
  decoration: InputDecoration(
    border: InputBorder.none,
  ),
),
              ),*/
                  ),
          child: Column(
            children: <Widget>[
              
              Container(   
                width: 375,
                margin: EdgeInsets.only(top: height/17.2),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: height*.175),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  children: <Widget>[
                    Container(alignment: Alignment.centerLeft, child: Text("Hello,", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 33.6),),margin: EdgeInsets.only(left: width/20)),
                    Container(alignment: Alignment.centerLeft, padding: EdgeInsets.only(bottom: height/50),child: GestureDetector(child: Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.4)), onTap: () { setState(() {
                      _ackAlert(context);
                    });},), margin: EdgeInsets.only(left: width/20),)
                  ],
                ),
              ),
              Container(
                width: 375,
                margin: EdgeInsets.only(top: height/55.2),
                padding: EdgeInsets.only(top: height*.05),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  children: <Widget>[
                    Container(alignment: Alignment.center, child: Text("When are you waking up?", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16.8),)),
                    Container(alignment: Alignment.center, padding: EdgeInsets.only(bottom: height/50),child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(hi, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70)),
                        Container(alignment: Alignment.bottomLeft, child: Text(marker, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),))
                      ],
                    ), margin: EdgeInsets.only(left: width/20),)
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 375,
                margin: EdgeInsets.only(top: height/55.2, bottom: 0),
                padding: EdgeInsets.only(top: height*.15),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  children: <Widget>[
                    Container(alignment: Alignment.center, child: Text("When are you waking up?", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16.8),)),
                    Container(alignment: Alignment.center, padding: EdgeInsets.only(bottom: height/50),child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        DropdownButton<String>(
        value: dropdownValue,
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Eleven', 'Twelve', 'None']
          .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          })
          
          .toList(),
      ),
                        Container(alignment: Alignment.bottomLeft, child: Text("am", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),)),
                      ],
                    ), margin: EdgeInsets.only(left: width/20),),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff003ABA)
                      ),
                      child: Icon(Icons.ac_unit, size: 30), 
                      padding: EdgeInsets.only(bottom: 0),
                      ),
                  ],
                ),
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
  void stateSet()
{
  setState(() {
    
  });
}
}
Future<void> _ackAlert(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('What is your name?'),
        content: TextField(
                  controller: textFieldController,
                  
  decoration: InputDecoration(
    border: InputBorder.none,
  ),
),
        actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}