import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_widget.dart/card_content.dart';
import 'custom_widget.dart/reusable_card.dart';

const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int gender) {
    // if (gender == 'male' && maleCardColor == inactiveCardColor) {
    //   maleCardColor == activeCardColor;
    // } else {
    //   maleCardColor == inactiveCardColor;
    // }

    // if (gender == 'female' && femaleCardColor == inactiveCardColor) {
    //   femaleCardColor == activeCardColor;
    // } else {
    //   maleCardColor == inactiveCardColor;
    // }
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
  }

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
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('card press');
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: const ReusableCard(
                        cardChild: CardContent(
                          text: 'MALE',
                          icon: FontAwesomeIcons.mars,
                        ),
                        color: activeCardColor),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('card press');
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: const ReusableCard(
                        cardChild: CardContent(
                          text: 'FEMALE',
                          icon: FontAwesomeIcons.venus,
                        ),
                        color: activeCardColor),
                  ),
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
