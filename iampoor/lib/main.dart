import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white38,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[700],
            title: Center(
              child: const Text('Iam Poor App'),
            ),
          ),
          body: Center(
            child: Image(
              image: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/007/271/256/large_2x/anthracite-coal-fossil-fuels-flat-icon-for-apps-and-websites-vector.jpg'),
            ),
          )),
    ),
  );
}
