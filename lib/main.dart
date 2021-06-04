import 'package:flutter/material.dart';
import 'input_page.dart';
import 'result_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0A21),
        // accentColor: Color(0xFF0A0A21),
        scaffoldBackgroundColor: Color(0xFF0AF0F),
        // textTheme: TextTheme(
        //   bodyText2: TextStyle(color: Colors.white),
        // ),
      ),
      home: InputPage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => InputPage(),
      // },
    );
  }
}
