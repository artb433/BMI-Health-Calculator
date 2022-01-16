import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xFF4285F4);
const bottomContainerColor = Color(0xFFEB155);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(
                      cardChild: CardContent(), color: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(color: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            height: 60,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  const CardContent({
    Key? key,
    this.icon,
    this.text,
  }) : super(key: key);
  final Icon? icon;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.mars,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(text.toString(),
            style: const TextStyle(fontSize: 18, color: Colors.white))
      ],
    );
  }
}

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
