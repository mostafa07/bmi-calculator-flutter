import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page_widget.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        InputPage.routeName: (context) => InputPage(),
        ResultsPage.routeName: (context) => ResultsPage(),
      },
      initialRoute: InputPage.routeName,
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryColor,
      ),
    );
  }
}
