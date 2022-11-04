import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

void playNote(int noteNumber) {
  final player = AudioPlayer();
  player.play(AssetSource("note$noteNumber.wav"));
}

Widget drawTile(Color color, int noteNumber) {
  return Expanded(
    child: MaterialButton(
      color: color,
      onLongPress: () {
        playNote(noteNumber);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              drawTile(Colors.red, 1),
              drawTile(Colors.orange, 2),
              drawTile(Colors.yellow, 3),
              drawTile(Colors.green, 4),
              drawTile(Colors.teal, 5),
              drawTile(Colors.blue, 6),
              drawTile(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
