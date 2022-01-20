import 'package:flutter/material.dart';
import 'package:health_checker/constants.dart/constants.dart';

import '../results_page.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    this.onTap,
    this.text,
    Key? key,
  }) : super(key: key);
  final VoidCallback? onTap;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const ResultsPage();
        }));
      },
      child: Container(
        child:
            Center(child: Text(text.toString(), style: kLargeButtonTextStyle)),
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width,
        height: 60,
      ),
    );
  }
}
