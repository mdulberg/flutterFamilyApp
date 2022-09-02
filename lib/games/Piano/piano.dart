import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('musical_notes/note$soundNumber.wav');
  }

  Expanded buildKey({required MaterialColor color, required int keyNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(keyNumber);
        }, child: Text(''),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(color: Colors.red, keyNumber: 1),
                  buildKey(color: Colors.orange, keyNumber: 2),
                  buildKey(color: Colors.yellow, keyNumber: 3),
                  buildKey(color: Colors.green, keyNumber: 4),
                  buildKey(color: Colors.teal, keyNumber: 5),
                  buildKey(color: Colors.lightBlue, keyNumber: 6),
                  buildKey(color: Colors.purple, keyNumber: 7),
                ])
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home_filled, color: Colors.pink[600],size: 30,),
          foregroundColor: Colors.orange,
          onPressed: () {
            Navigator.popAndPushNamed(context, '/home');
          },
        ),
      ),
    );
  }
}