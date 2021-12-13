import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void plays(int sn) {
    final player = AudioCache();

    // call this method when desired
    player.play('note$sn.wav');
  }

  Expanded buildK(int num, Color culur) {
    return Expanded(
      child: RawMaterialButton(
        onPressed: () {
          plays(num);
        },
        child: Container(
          color: culur,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                buildK(1, Colors.red),
                buildK(2, Colors.orange),
                buildK(3, Colors.green),
                buildK(4, Colors.teal),
                buildK(5, Colors.blue),
                buildK(6, Colors.purple),
                buildK(7, Colors.yellow),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
