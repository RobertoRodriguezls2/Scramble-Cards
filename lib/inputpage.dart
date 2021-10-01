import 'package:cards/cardbrain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/cardtheme.dart';
import 'components/icon_content.dart';
import 'components/reusable_card.dart';
import 'main.dart';

enum Preset { one, two, three, four, five, six, seven, eight, nine, ten }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  void _selectCard() {
    selectedColor = Preset.ten;
  }

  Color selected = kInactiveCardColor;
  Color unselected = kInactiveCardColor;
  Preset selectedColor = Preset.ten;
  String dialogText = '';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              //color: Colors.yellow,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedColor = Preset.one;
                      });
                      showDialog(
                        context: context,
                        builder: (BuildContext) {
                          return AlertDialog(
                            content: Container(
                              //color: Colors.teal,
                              height: 100,
                              width: 100,
                              child: Center(
                                heightFactor: 2.3,
                                child: FittedBox(
                                  child: Text(
                                    cardBrain().getCard(),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 40.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            backgroundColor: kAccentColor,
                          );
                        },
                      );
                    },
                    colour: selectedColor == Preset.one
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '1',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedColor = Preset.two;
                        });
                        showDialog(
                          context: context,
                          builder: (BuildContext) {
                            return AlertDialog(
                              content: Container(
                                //color: Colors.teal,
                                height: 100,
                                width: 100,
                                child: Center(
                                  heightFactor: 2.3,
                                  child: FittedBox(
                                    child: Text(
                                      cardBrain().getCard(),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              backgroundColor: kAccentColor,
                            );
                          },
                        );
                      },
                      colour: selectedColor == Preset.two
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '2',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedColor = Preset.three;
                        });
                        showDialog(
                          context: context,
                          builder: (BuildContext) {
                            return AlertDialog(
                              content: Container(
                                //color: Colors.teal,
                                height: 100,
                                width: 100,
                                child: Center(
                                  heightFactor: 2.3,
                                  child: FittedBox(
                                    child: Text(
                                      cardBrain().getCard(),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              backgroundColor: kAccentColor,
                            );
                          },
                        );
                      },
                      colour: selectedColor == Preset.three
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '3',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              //color: Colors.black,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedColor = Preset.four;
                        });
                        showDialog(
                          context: context,
                          builder: (BuildContext) {
                            return AlertDialog(
                              content: Container(
                                //color: Colors.teal,
                                height: 100,
                                width: 100,
                                child: Center(
                                  heightFactor: 2.3,
                                  child: FittedBox(
                                    child: Text(
                                      cardBrain().getCard(),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              backgroundColor: kAccentColor,
                            );
                          },
                        );
                      },
                      colour: selectedColor == Preset.four
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '4',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedColor = Preset.five;
                        });
                        showDialog(
                          context: context,
                          builder: (BuildContext) {
                            return AlertDialog(
                              content: Container(
                                //color: Colors.teal,
                                height: 100,
                                width: 100,
                                child: Center(
                                  heightFactor: 2.3,
                                  child: FittedBox(
                                    child: Text(
                                      cardBrain().getCard(),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              backgroundColor: kAccentColor,
                            );
                          },
                        );
                      },
                      colour: selectedColor == Preset.five
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '5',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedColor = Preset.six;
                        });
                        showDialog(
                          context: context,
                          builder: (BuildContext) {
                            return AlertDialog(
                              content: Container(
                                //color: Colors.teal,
                                height: 100,
                                width: 100,
                                child: Center(
                                  heightFactor: 2.3,
                                  child: FittedBox(
                                    child: Text(
                                      cardBrain().getCard(),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              backgroundColor: kAccentColor,
                            );
                          },
                        );
                      },
                      colour: selectedColor == Preset.six
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '6',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              //color: Colors.red,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedColor = Preset.seven;
                        });
                        showDialog(
                          context: context,
                          builder: (BuildContext) {
                            return AlertDialog(
                              content: Container(
                                //color: Colors.teal,
                                height: 100,
                                width: 100,
                                child: Center(
                                  heightFactor: 2.3,
                                  child: FittedBox(
                                    child: Text(
                                      cardBrain().getCard(),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              backgroundColor: kAccentColor,
                            );
                          },
                        );
                      },
                      colour: selectedColor == Preset.seven
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '7',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedColor = Preset.eight;
                        });
                        showDialog(
                          context: context,
                          builder: (BuildContext) {
                            return AlertDialog(
                              content: Container(
                                //color: Colors.teal,
                                height: 100,
                                width: 100,
                                child: Center(
                                  heightFactor: 2.3,
                                  child: FittedBox(
                                    child: Text(
                                      cardBrain().getCard(),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              backgroundColor: kAccentColor,
                            );
                          },
                        );
                      },
                      colour: selectedColor == Preset.eight
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '8',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedColor = Preset.nine;
                        });
                        showDialog(
                          context: context,
                          builder: (BuildContext) {
                            return AlertDialog(
                              content: Container(
                                //color: Colors.teal,
                                height: 100,
                                width: 100,
                                child: Center(
                                  heightFactor: 2.3,
                                  child: FittedBox(
                                    child: Text(
                                      cardBrain().getCard(),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              backgroundColor: kAccentColor,
                            );
                          },
                        );
                        print(cardBrain().getCard());
                      },
                      colour: selectedColor == Preset.nine
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '9',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
