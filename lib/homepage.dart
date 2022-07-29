import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:miniproject/layout/theme.dart';
import 'package:miniproject/widgets/weekSchedule.dart';
import 'package:miniproject/widgets/todayschedule.dart';

//Widget for input
class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text(".."),
    ),
    body: Container(
        decoration: BoxDecoration(color: Colors.teal),
        padding: EdgeInsets.all(20.0),
        width: double.infinity,
        child: Container(
            padding: EdgeInsets.fromLTRB(20.0,10.0, 20.0, 10.0),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
                children: <Widget>[
                Text(
                  "Hi , welcome!Todays:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0, 
                    fontWeight: FontWeight.w700),
                ),
                // Form Widget Comes Here
                Today(),
                Text(
                  "This Week:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 24.0, 
                    fontWeight: FontWeight.w700),
                ),

                 SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: WSchedule(),
                ),
              ),

              ],
            ),
        )),
    );
  }
}