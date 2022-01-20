import 'package:flutter/material.dart';
import 'package:health_checker/constants.dart/constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: const Text('Your Result', style: kLargeButtonTextStyle),
    );
  }
}
