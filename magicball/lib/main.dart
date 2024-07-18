import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Magic Ball',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: const MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int randomImage = 1;
  void RandomNumberGenerator() {
    setState(() {
      randomImage = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: RandomNumberGenerator,
          child: Image.asset('images/ball$randomImage.png'),
        ),
      ],
    );
  }
}
