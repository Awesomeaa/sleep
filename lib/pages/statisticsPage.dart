import "package:flutter/material.dart";
import "package:flare_flutter/flare_actor.dart";

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
          body: Container(
        child: FlareActor(
          "assets/fade to black (2).flr",
          animation: "fade to black",
        )
      ),
    );
  }
}