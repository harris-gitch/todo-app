import 'package:flutter/material.dart';
import 'package:myfirstproject/modules/bmi/bmiCalcuator.dart';
import 'package:myfirstproject/modules/challenge/flightchallenge.dart';
import 'package:myfirstproject/modules/login/login.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: LoginScreen(),
    );
  }
}





