import "package:flutter/material.dart";

class SleepPage extends StatefulWidget{
  @override
  _SleepPageState createState() => _SleepPageState();
}

class _SleepPageState extends State<SleepPage> with WidgetsBindingObserver{
  
  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    switch(state){
      case AppLifecycleState.paused:
      
        break;
      case AppLifecycleState.resumed:
        setState(() {

          }
        );
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.suspending:
        break;
    }
    super.didChangeAppLifecycleState(state);
  }
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
    );
  }
}