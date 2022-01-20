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
          Container(child: const Text('Your Result', style: kTitleTextStyle)),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.0',
                    style: kBMItextStyle,
                  ),
                  Text('Your BMI result is quite low, you should eat more',
                      style: kResultTextStyle),
                ],
              ),
              color: kActiveCardColor,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ResultsPage();
              }));
            },
            child: Container(
              child: const Center(
                  child: Text('RE-CALCULATE', style: kLargeButtonTextStyle)),
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: 60,
            ),
          ),
        ],
      ),
    );
  }
}
