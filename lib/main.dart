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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            playSound(1);
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.purple,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.zero)
                              )
                          ),
                          child: const Text('')),
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            playSound(2);
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.zero))),
                          child: const Text('')),
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            playSound(3);
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.yellow,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.zero))),
                          child: const Text('')),
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            playSound(4);
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.zero))),
                          child: const Text('')),
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            playSound(5);
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.zero))),
                          child: const Text('')),
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            playSound(6);
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.zero))),
                          child: const Text('')),
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            playSound(7);
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.zero))),
                          child: const Text('')),
                    )
                  ]),
            )));
  }
}
