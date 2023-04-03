import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

void playNote(int noteNumber) {
  AudioPlayer player = AudioPlayer();
  player.play(AssetSource('note$noteNumber.wav'));
}

Expanded buildKey({required int noteNumber, required Color color}) {
  return Expanded(
    child: TextButton(
      onPressed: () {
        playNote(noteNumber);
      },
      child: Container(
        color: color,
      ),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildKey(noteNumber: 1, color: Colors.red),
              buildKey(noteNumber: 2, color: Colors.orange),
              buildKey(noteNumber: 3, color: Colors.yellow),
              buildKey(noteNumber: 4, color: Colors.green),
              buildKey(noteNumber: 5, color: Colors.blue.shade900),
              buildKey(noteNumber: 6, color: Colors.indigoAccent),
              buildKey(noteNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
