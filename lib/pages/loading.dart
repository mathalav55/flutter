import 'package:flutter/material.dart';
import 'package:worldtime/pages/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setUpWorldTime() async{
      WorldTime instance = WorldTime( location: 'India' , flag: 'germany.png' , url: 'Asia/Kolkata');
      await instance.getTime();
      Navigator.pushReplacementNamed(context, '/home' , arguments:{
        'time' : instance.time,
        'location' : instance.location,
        'flag' : instance.flag,
        'isDayTime' : instance.isDayTime,
      });
  }
  @override
  void initState(){
    super.initState();
    setUpWorldTime();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          child : SpinKitFoldingCube(
            color: Colors.white,
            size: 50.0,
          ),
        ),
    );
  }
}
