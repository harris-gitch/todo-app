

import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';

import 'package:myfirstproject/shared/blocObserve.dart';


import 'layout/home_layout.dart';

void main() {

  BlocOverrides.runZoned(
        () {
          runApp( MyApp());
      // Use cubits...
    },
    blocObserver: MyBlocObserver(),
  );
 // initializeDateFormatting().then((_) => runApp( MyApp()));
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff3BAC62),
      ),
      debugShowCheckedModeBanner: false,
      home: Home_layout(),
    );
  }
}





