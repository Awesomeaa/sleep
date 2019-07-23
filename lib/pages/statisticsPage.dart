import "package:flutter/material.dart";
import "package:flare_flutter/flare_actor.dart";

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF054BAF),
          body: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    color: Colors.red,
                    child: Text("Night 1")
                  ),
                ],
              ),
              Container(),
              Container(),
              Container()
            ],
      ),
    );
  }
}