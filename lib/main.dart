import 'package:flutter/material.dart';
import 'package:full_app/coursespage.dart';
import 'package:full_app/homepage.dart';
import 'package:full_app/startpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.orange),
      debugShowCheckedModeBanner: false,
      home: start(),
    );
  }
}
