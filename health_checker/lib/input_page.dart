import 'package:flutter/material.dart';

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
                  child: ReusableCard(color: activeCardColor),
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
            color: const Color(0xFF1D1E31),
            borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(15));
  }
}
