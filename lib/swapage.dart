import 'dart:html';
import 'package:intl/intl.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Swapf extends StatefulWidget {
  @override
  _Swapf createState() {
    return _Swapf();
  }
}

class _Swapf extends State<Swapf> {
  /*DateTime d=DateTime.now();
  int week=(DateTime.now().weekday);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(week.toString()),
    
    );*/
DateTime findFirstDateOfTheWeek(DateTime dateTime) {
  return dateTime.subtract(Duration(days: dateTime.weekday - 1));
}
DateTime findLastDateOfTheWeek(DateTime dateTime) {
  if(dateTime.weekday!=7){
    return dateTime
        .add(Duration(days: DateTime.daysPerWeek - dateTime.weekday));}
  else{
    DateTime s1=dateTime
        .add(Duration(days: DateTime.daysPerWeek - dateTime.weekday));
        return s1.add(Duration(days:7));
  }
}
int findDay(DateTime dateTime) {
    return dateTime.day;
}
int findMonth(DateTime dateTime) {
    return dateTime.month;
}
int findYear(DateTime dateTime) {
    return dateTime.year;
}

DateTime today=DateTime.now();
late DateTime first;
late DateTime last;
late DateTime SelectDate;
late String SelectShift;

TextEditingController dateInput = TextEditingController();
 
String dropdownvalue = 'Select Shift';  
 
  // List of items in our dropdown menu
  var items = [   
    'Select Shift',
    'Day',
    'Afternoon',
    'Night',
  ];

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    DateTime today=DateTime.now();
    first=findFirstDateOfTheWeek(today);
    last=findLastDateOfTheWeek(today);
    super.initState();
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("DatePicker in Flutter"),
          backgroundColor: Colors.redAccent, //background color of app bar
        ),
        body: Container(
          child:Column(
            children:[
              TextButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                  showTitleActions: true,
                  minTime: DateTime(findYear(first),findMonth(first),findDay(first)),
                  maxTime: DateTime(findYear(last),findMonth(last),findDay(last)), onChanged: (date) {
                  print('change $date');
                  }, onConfirm: (date) {
                  print('confirm $date');
                  SelectDate=DateFormat.ABBR_MONTH_DAY.format(date);
                  print(SelectDate);
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                  child: Text('Select date',style: TextStyle(color: Colors.blue),)),
                 Center(
                    child:DropdownButton(
                      // Initial Value    
                      value: dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),   
                      // Array list of items
                      items: items.map((String items) {
                return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
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
