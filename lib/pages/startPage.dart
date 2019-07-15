import "package:flutter/material.dart";

class StartPage extends StatelessWidget {
  const StartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Enter a search term'
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
                    Container(alignment: Alignment.centerLeft, padding: EdgeInsets.only(bottom: height/50),child: Text("Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.4)), margin: EdgeInsets.only(left: width/20),)
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
                        Text("7:00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70)),
                        Container(alignment: Alignment.bottomLeft, child: Text("am", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),)),
                      ],
                    ), margin: EdgeInsets.only(left: width/20),),
                    Container(color: Color(0xff003ABA), child: Icon(Icons.ac_unit), margin: EdgeInsets.only(bottom: 0),),
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
}
