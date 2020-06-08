import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());
/*
Lo mismo de:
void main()
{
  runApp(Xylophone());
}
*/

class XylophoneApp extends StatelessWidget {
  void playSound(int value) {
    final player = AudioCache();
    player.play("note$value.wav");
  }
  Widget buildKey(int value, Color color)
  {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(value);
          },
          child: null),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.deepOrange),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellowAccent),
              buildKey(4, Colors.green[700]),
              buildKey(5, Colors.teal[700]),
              buildKey(6, Colors.blueAccent[700]),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

//child: FlatButton(onPressed: () {
//final player = AudioCache();
//player.play("note1.wav");
//}, child: Text("Click Me"))),
