import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:assets_audio_player/src/assets_audio_player.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  final int soundIndex = 1;

  void playSound(int soundIndex) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundIndex.wav'));
  }

  Expanded buildKey({required Color color, required int soundNumber}){
    return Expanded(
      child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          style: TextButton.styleFrom(
              backgroundColor: color,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero)
              )
          ),
          child: const Text('')),
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
                  children: <Widget>[
                    buildKey(color: Colors.red, soundNumber: 1),
                    buildKey(color: Colors.orange, soundNumber: 2),
                    buildKey(color: Colors.yellow, soundNumber: 3),
                    buildKey(color: Colors.green, soundNumber: 4),
                    buildKey(color: Colors.blue, soundNumber: 5),
                    buildKey(color: Colors.indigo, soundNumber: 6),
                    buildKey(color: Colors.purple, soundNumber: 7),
                  ]),
            )));
  }
}
