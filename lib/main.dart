import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:assets_audio_player/src/assets_audio_player.dart';


void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
   const XylophoneApp({super.key});

  final int soundIndex = 1;

  void playSound(int soundIndex){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundIndex.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      playSound(1);
                    },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.purple,
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor: Colors.purple
                      ),
                    child: const Text('')
                  ),
                  TextButton(
                      onPressed: () {
                        playSound(2);
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.orange,
                          // padding: const EdgeInsets.all(16.0),
                          textStyle: const TextStyle(fontSize: 20),
                        backgroundColor: Colors.orange
                      ),
                      child: const Text('')
                  ),
                  TextButton(
                      onPressed: () {
                        playSound(3);
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.yellow,
                          // padding: const EdgeInsets.all(16.0),
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor: Colors.yellow
                      ),
                      child: const Text('')
                  ),
                  TextButton(
                      onPressed: () {
                        playSound(4);
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.blue,
                          // padding: const EdgeInsets.all(16.0),
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor: Colors.blue
                      ),
                      child: const Text('')
                  ),
                  TextButton(
                      onPressed: () {
                        playSound(5);
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.red,
                          // padding: const EdgeInsets.all(16.0),
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor: Colors.red
                      ),
                      child: const Text('')
                  ),
                  TextButton(
                      onPressed: () {
                        playSound(6);
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.green,
                          // padding: const EdgeInsets.all(16.0),
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor: Colors.green
                      ),
                      child: const Text('')
                  ),
                  TextButton(
                      onPressed: () {
                        playSound(7);
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          // padding: const EdgeInsets.all(16.0),
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor: Colors.black
                      ),
                      child: const Text('')
                  )
                ]
              ),
            )
        )
    );
  }
}



