import 'package:flutter/material.dart';
import 'package:miniproject/widgets/basicwidget.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Details of the Day",
      home: Scaffold(
        body: Center( 
          child: BasicWidget(),
        ),
      ),
    );
  }
}