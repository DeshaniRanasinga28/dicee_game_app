import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    getRandomDiceNumber();
                  });
                },
                child: Image(
                  image: AssetImage("images/dice$leftDiceNumber.png"),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    getRandomDiceNumber();
                  });
                },
                child: Image(
                  image: AssetImage("images/dice$rightDiceNumber.png"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  getRandomDiceNumber() {
    int randomNumberLimit = 5;
    leftDiceNumber = Random().nextInt(randomNumberLimit) + 1; // from 1 to 6
    rightDiceNumber = Random().nextInt(randomNumberLimit) + 1; // from 1 to 6
  }
}
