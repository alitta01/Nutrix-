import 'package:flutter/material.dart';
import 'package:miniproject/loginpage.dart';
//import 'package:flutter_login_signup/loginpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login sign up demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Loginpage(),
    );
  }
}