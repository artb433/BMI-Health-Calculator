import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF0A0E21),
        // primaryColor: Colors.lightBlue[600],

        // Define the default font family.
        fontFamily: 'Raleway',
      ),
      home: const InputPage(),
    );
  }
}
