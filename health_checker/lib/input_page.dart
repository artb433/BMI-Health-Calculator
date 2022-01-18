import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart/constants.dart';
import 'custom_widget.dart/card_content.dart';
import 'custom_widget.dart/reusable_card.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double height = 180.0;
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;

  void updateColor(Gender gender) {
    // Ternary operator is used here in replace of if else statement
    //male card pressed
    gender == Gender.male && maleCardColor == kInactiveCardColor
        ? maleCardColor = kActiveCardColor
        // femaleCardColor = inactiveCardColor;
        : maleCardColor = kInactiveCardColor;

    // Ternary operator is used here in replace of if else statement
    //female card pressed
    gender == Gender.female && femaleCardColor == kInactiveCardColor
        ? femaleCardColor = kActiveCardColor
        //maleCardColor = activeCardColor;
        : femaleCardColor = kInactiveCardColor;

    /// if (gender == 1) {
    ///   if (maleCardColor == inactiveCardColor) {
    ///     maleCardColor = activeCardColor;
    ///   } else {
    ///     maleCardColor = inactiveCardColor;
    ///   }
    /// }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('male card pressed');
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: ReusableCard(
                        cardChild: const CardContent(
                          text: 'MALE',
                          icon: FontAwesomeIcons.mars,
                        ),
                        color: maleCardColor),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('female card pressed');
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                        cardChild: const CardContent(
                          text: 'FEMALE',
                          icon: FontAwesomeIcons.venus,
                        ),
                        color: femaleCardColor),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 40,
                                color: Colors.white)),
                        const Text('cm')
                      ],
                    ),
                    Slider(
                        value: height,
                        min: 22,
                        max: 200,
                        activeColor: const Color(0xFFEB1555),
                        inactiveColor: const Color(0xFF111328),
                        onChanged: (double newValue) {
                          setState(() {
                            print(height);
                            height = newValue.roundToDouble();
                          });
                        })
                  ],
                ),
                color: kActiveCardColor),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(color: kActiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: kActiveCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
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
