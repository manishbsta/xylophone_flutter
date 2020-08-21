import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Xylophone(),
      ),
    ),
  );
}

class Xylophone extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey(Color color, int soundNumber) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: FlatButton(
          onPressed: () {
            playSound(soundNumber);
          },
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(Colors.blue, 1),
          buildKey(Colors.red, 2),
          buildKey(Colors.blueGrey, 3),
          buildKey(Colors.teal, 4),
          buildKey(Colors.green, 5),
          buildKey(Colors.purple, 6),
          buildKey(Colors.yellowAccent, 7),
        ],
      ),
    );
  }
}
