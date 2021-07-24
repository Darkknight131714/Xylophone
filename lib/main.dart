import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:english_words/english_words.dart";
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(
    XylophoneApp()
);

class XylophoneApp extends StatelessWidget {
  Expanded buildKey(int count,Color str){
    return Expanded(
      child: Container(
        color: str,
        child: TextButton(
          onPressed: (){
            final player = AudioCache();
            player.play('note$count.wav');
          },
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(1, Colors.red),
                  buildKey(2, Colors.orange),
                  buildKey(3, Colors.yellow),
                  buildKey(4, Colors.green),
                  buildKey(5, Colors.teal),
                  buildKey(6, Colors.blue),
                  buildKey(7, Colors.purple),
                ],
              )
          ),
        ),
      ),
    );
  }
}
