import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Login/LoginPage.dart';



void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

