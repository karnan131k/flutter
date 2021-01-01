import 'package:bmicalculator/screens/input_page.dart';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xff0A0E21),
      scaffoldBackgroundColor: Color(0xff0A0E21),
    ),
    // theme: ThemeData.dark(),
       home: BmiCalculator(),
   // initialRoute: '/',
  //  routes: {
   //   '/': (context) => BmiCalculator(),
   //   '/first': (context) => ResultPage(
   //   ,
   //      resultText: ,

      ),
 //   },
  );
}
