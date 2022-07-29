import 'package:flutter/material.dart';

class WSchedule extends StatelessWidget {
  // String day="";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child:ListView(
        scrollDirection:Axis.horizontal,
        children:<Widget>[
          Daycard(day:'Sunday'),
          Daycard(day:'Monday'),
          Daycard(day:'Tuesday'),
          Daycard(day:'Wednesday'),
          Daycard(day:'Thursday'),
          Daycard(day:'Friday'),
          Daycard(day:'Saturday'),
          ]
                )
                );
                  }
}

//class to create weather card
class Daycard extends StatefulWidget{
  final String? day;
  const Daycard({ Key? key, this.day}): super(key: key);
  @override
  State<Daycard> createState() => _DaycardState();
}

class _DaycardState extends State<Daycard> {
  // final String day;
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('', style: const TextStyle(color: Colors.black)),
                  Text(widget.day.toString(), style: const TextStyle(color: Colors.black, fontSize: 24.0)),
                  Text('',  style: const TextStyle(color: Colors.black)),
                  Image.network('https://openweathermap.org/img/w/01d.png'),
                  Text('Jun 28, 2018', style: const TextStyle(color: Colors.black)),
                  Text('18:30', style: const TextStyle(color: Colors.black)),
                  ],
                  ),
                  ),);
  }
}