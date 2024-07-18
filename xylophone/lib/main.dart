import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('note1.wav'));
                  },
                  child: Container(
                    color: Colors.red,
                    width: double.maxFinite,
                    height: 200.0,
                    child: const Text(
                      'Click Me',
                      style: TextStyle(
                        backgroundColor: Colors.red,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('note2.wav'));
                  },
                  child: Container(
                    color: Colors.orange,
                    width: double.maxFinite,
                    height: 200.0,
                    child: const Text(
                      'Click Me',
                      style: TextStyle(
                        backgroundColor: Colors.orange,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('note3.wav'));
                  },
                  child: Container(
                    color: Colors.yellow,
                    width: double.maxFinite,
                    height: 200.0,
                    child: const Text(
                      'Click Me',
                      style: TextStyle(
                        backgroundColor: Colors.yellow,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('note4.wav'));
                  },
                  child: Container(
                    color: Colors.green,
                    width: double.maxFinite,
                    height: 200.0,
                    child: const Text(
                      'Click Me',
                      style: TextStyle(
                        backgroundColor: Colors.green,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('note5.wav'));
                  },
                  child: Container(
                    color: Colors.teal,
                    width: double.maxFinite,
                    height: 200.0,
                    child: const Text(
                      'Click Me',
                      style: TextStyle(
                        backgroundColor: Colors.teal,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('note6.wav'));
                  },
                  child: Container(
                    color: Colors.blue,
                    width: double.maxFinite,
                    height: 200.0,
                    child: const Text(
                      'Click Me',
                      style: TextStyle(
                        backgroundColor: Colors.blue,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('note7.wav'));
                  },
                  child: Container(
                    color: Colors.purple,
                    width: double.maxFinite,
                    height: 200.0,
                    child: const Text(
                      'Click Me',
                      style: TextStyle(
                        backgroundColor: Colors.purple,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
