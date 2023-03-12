import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(piano());

class piano extends StatelessWidget {
  void playsound(int a) {
    final player = AudioPlayer();
    player.play(DeviceFileSource('assets/note$a.wav'));
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
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  onPressed: () {
                    playsound(1);
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    playsound(2);
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    playsound(3);
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                  onPressed: () {
                    playsound(4);
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  onPressed: () {
                    playsound(5);
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                  ),
                  onPressed: () {
                    playsound(6);
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                  ),
                  onPressed: () {
                    playsound(7);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
