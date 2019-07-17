import "package:flutter/material.dart";
import 'dart:async';
import 'package:sleep/main.dart';

String dropdownValue;
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
    textFieldController.dispose();
  }
  final textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    MyApp.saveload();
    if (textFieldController.text != ''){
      name = textFieldController.text;
      startup = false;
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
                  colors: [Color(0xff003593), Color(0xff003ABA)])*/),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: textFieldController,
                  
  decoration: InputDecoration(
    border: InputBorder.none,
  ),
),
              ),
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
                    Container(alignment: Alignment.centerLeft, padding: EdgeInsets.only(bottom: height/50),child: Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.4)), margin: EdgeInsets.only(left: width/20),)
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
                        Text("7:00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70)),
                        Container(alignment: Alignment.bottomLeft, child: Text("am", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),))
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
        items: <String>['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Sevem', 'Eight', 'Nine', 'Ten', 'Eleven', 'Twelve']
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