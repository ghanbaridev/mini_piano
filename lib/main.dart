import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(piano());

class piano extends StatelessWidget {
  void playsound(int a) {
    final player = AudioPlayer();
    player.play(DeviceFileSource('assets/note$a.wav'));
  }

  Widget build_key(int b, final Color c) {
    return Expanded(
      flex: 2,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(c),
        ),
        onPressed: () {
          playsound(b);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              build_key(1, Colors.red),
              build_key(2, Colors.black),
              build_key(3, Colors.blue),
              build_key(4, Colors.orange),
              build_key(5, Colors.green),
              build_key(6, Colors.grey),
              build_key(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
