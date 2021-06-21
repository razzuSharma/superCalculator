import 'package:flutter/material.dart';
import 'package:myapplication/homepage.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("My Application"),
      color: Colors.greenAccent,
      theme: new ThemeData(
      primarySwatch: Colors.purple,
      backgroundColor: Colors.purpleAccent
      ),
      home: new Homepage(),
    );
  }
}
