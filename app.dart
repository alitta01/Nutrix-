//import 'dart:html';

import 'package:flutter/material.dart';
import './widget/basicWidget.dart';

class App extends StatelessWidget {
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
