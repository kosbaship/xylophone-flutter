import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int notNumber) {
    final player = AudioCache();
    player.play('note$notNumber.wav');
  }

  Widget buildKey(Color color, int soundNumber, String soundName) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text('Note $soundName',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildKey(Colors.deepOrange, 1, "One"),
              buildKey(Colors.purple, 2, "Two"),
              buildKey(Colors.yellowAccent, 3, "Three"),
              buildKey(Colors.black54, 4, "Four"),
              buildKey(Colors.teal, 5, "Five"),
              buildKey(Colors.pinkAccent, 6, "Six"),
              buildKey(Colors.cyanAccent, 7, "Seven"),
            ],
          ),
        ),
      ),
    ));
  }
}
