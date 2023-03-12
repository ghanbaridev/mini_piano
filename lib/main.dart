import 'dart:async';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(piano());

class piano extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new homepage_piano(),
      backgroundColor: Colors.yellow,
      title: new Text(
        'Welcome to a mimi piano App',
        textScaleFactor: 2,
      ),
      loadingText: Text("Loading"),
      photoSize: 150.0,
      loaderColor: Colors.red,
    );
  }
}

class homepage_piano extends StatelessWidget {
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
        appBar: AppBar(
          title: Center(child: Text(" Mini Piano")),
        ),
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
