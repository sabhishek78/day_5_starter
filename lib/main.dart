import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XyloPhone());



class XyloPhone extends StatelessWidget {
  Widget createMusicButton(Color buttonColor, int note) {
    return Expanded(
      child: FlatButton(
        color: buttonColor,
        onPressed: () {
          AudioCache player = AudioCache();
          player.play('note$note.wav');
        },
        child: Text(''),
      ),

    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,

            children: <Widget>[
              createMusicButton(Colors.red, 1),
              createMusicButton(Colors.orange, 2),
              createMusicButton(Colors.yellow, 3),
              createMusicButton(Colors.green, 4),
              createMusicButton(Colors.blue, 5),
              createMusicButton(Colors.indigo, 6),
              createMusicButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}