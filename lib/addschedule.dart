import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewSchedule extends StatefulWidget {
  @override
  _NewSchedule createState() {
    return _NewSchedule();
  }
}

class _NewSchedule extends State<NewSchedule> {

  String dropdownvalue1 = 'Select Shift';  
 
  // List of items in our dropdown menu
  var Shiftitems = [   
    'Select Shift',
    'Day',
    'Afternoon',
    'Night',
  ];
  
  String dropdownvalue2 = 'Select Day';
  var Dayitems = [   
    'Select Day',
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];
  String SelectDay='';
  String SelectShift='';
 @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Adding Schedule"),
          backgroundColor: Colors.greenAccent, //background color of app bar
        ),
        body: Container(
          child:Column(
            children:[
              Center(
                    child:DropdownButton(
                      // Initial Value    
                      value: dropdownvalue2,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),   
                      // Array list of items
                      items: Dayitems.map((String Dayitems) {
                return DropdownMenuItem(
                    value: Dayitems,
                    child: Text(Dayitems),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue2 = newValue!;
                  SelectDay=newValue;
                });
              },
            ),),
            Center(
              child:DropdownButton(
                      // Initial Value    
                      value:dropdownvalue1,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),   
                      // Array list of items
                      items: Shiftitems.map((String Shiftitems) {
                return DropdownMenuItem(
                    value: Shiftitems,
                    child: Text(Shiftitems),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue1 = newValue!;
                  SelectShift=newValue;//
                });
              },
            ),
                  )]

          )
        )
        );
    
  }

}
