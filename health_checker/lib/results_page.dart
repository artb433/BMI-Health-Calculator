import 'package:flutter/material.dart';
import 'package:health_checker/constants.dart/constants.dart';

import 'custom_widget.dart/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                  child: const Text('Your Result', style: kTitleTextStyle))),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                children: [],
              ),
              color: kActiveCardColor,
            ),
          ),
        ],
      ),
    );
  }
}
