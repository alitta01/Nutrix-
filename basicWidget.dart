import 'package:flutter/material.dart'; 

class BasicWidget extends StatefulWidget{
  @override
  State<BasicWidget> createState() => _BasicWidgetState();
}

class _BasicWidgetState extends State<BasicWidget> {
  @override
  Widget build(BuildContext context){
    return  Container(
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 115, 180, 117),
          child:Column(children:[
          Container(
            width:400,
            height:100,
            color:Color.fromARGB(255, 145, 198, 240),
             child:Center(
              child:Text("DETAILS OF THE DAY:"),
              )),
           Container(
            width:400,
            height:300,
            color:Colors.white,
             child:Center(
              child:Text("Date:\n\nDay:\n\nList of Collegues:"),
              
             )),
             
          ]),
          );
        
          }
}