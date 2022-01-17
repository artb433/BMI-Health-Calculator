import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key? key, required this.color, this.cardChild})
      : super(key: key);
  final Color? color;
  final Widget? cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: cardChild,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(15));
  }
}
