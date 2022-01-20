import 'package:flutter/material.dart';
import 'package:health_checker/constants.dart/constants.dart';
import 'package:health_checker/input_page.dart';
import 'package:health_checker/calculator_brain.dart';
import 'custom_widget.dart/bottom_button.dart';
import 'custom_widget.dart/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key, this.resultText, this.bmiResult, this.bmiHint})
      : super(key: key);

  final String? bmiResult;
  final String? resultText;
  final String? bmiHint;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Container(child: const Text('Your Result', style: kTitleTextStyle)),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.0',
                    style: kBMItextStyle,
                  ),
                  Text(
                    'Your BMI result is quite low, you should eat more',
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              color: kActiveCardColor,
            ),
          ),
          BottomButton(
            onTap: () {},
            text: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
