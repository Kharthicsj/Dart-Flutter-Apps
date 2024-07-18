import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Dice App',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceimage = 1;
  int rightDiceimage = 1;

  void updateRandomNumbers() {
    setState(() {
      leftDiceimage = Random().nextInt(6) + 1;
      rightDiceimage = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                updateRandomNumbers();
              },
              child: Image.asset('images/dice$leftDiceimage.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                updateRandomNumbers();
              },
              child: Image.asset('images/dice$rightDiceimage.png'),
            ),
          ),
        ],
      ),
    );
  }
}
