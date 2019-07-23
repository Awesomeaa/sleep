import "package:flutter/material.dart";

class AboutPage extends StatelessWidget {
  String aboutText = "    Rockabye is meant for anyone who wants to make a difference in their nightly smartphone habits. Since many people use their phones as alarm clocks, it’s understandable that keeping a phone away from the bed is not the right solution for everyone.\n    This app allows users to keep their phone as an alarm while discouraging out of app screen time. Best suited for OLED screens as pixels are switched off, Rockabye switches to a black background once wake time is set and measures any stray night time phone usage, reporting the data to the user in the morning and letting them track it on a daily and weekly basis.\n    Rockabye was created by Zach Heindnreich, Ramya Iyer, and Akshay Mehta after an honest discussion about how much time they actually spent on their phones every night.\n    According to a 2019 report of a study led by Common Sense Media, 39% of teenagers have their phone within reach when sleep for the night, and 29% have their phone right in the bed with them. 36% of teens also self reported that they open their phones at least once per night to look at a notification or check up on their social media.\n    What’s really interesting is that teenagers know there’s a problem: 58% of teens admit that they are distracted by their mobile device at least once a day. Rockabye aims to help teens take control of their nighttime phone usage patterns.   ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF054BAF),
      body: Scrollbar(
              child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 330,
              height: 800,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white
              ),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text("About", style: TextStyle(fontSize: 34, color: Color(0xFF054BAF), fontWeight: FontWeight.bold))
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        margin: EdgeInsets.only(top: 0),
                        height: 729,
                        width: 330,
                                              child: ListView.builder(scrollDirection: Axis.vertical, itemCount: 1, itemBuilder: (context, index) => Container(child: Text(aboutText,style: TextStyle(fontSize: 20, color: Color(0xFF054BAF), fontWeight: FontWeight.w300)))
                        ),
                      )],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}