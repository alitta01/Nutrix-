import 'package:flutter/material.dart';
import 'package:miniproject/widgets/basicwidget.dart';

class DetailsD extends StatefulWidget {
  @override
  State<DetailsD> createState() => _DetailsDState();
}

class _DetailsDState extends State<DetailsD> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Details of the Day",
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center( 
          child: BasicWidget(),
        ),
      ),
    );
  }
}