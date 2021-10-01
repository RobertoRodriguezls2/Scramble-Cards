import 'package:cards/components/cardtheme.dart';
import 'package:flutter/material.dart';

import 'inputpage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kMaincolor,
        scaffoldBackgroundColor: Color(0xFF1a1b4d),
      ),
      home: InputPage(),
    );
  }
}
