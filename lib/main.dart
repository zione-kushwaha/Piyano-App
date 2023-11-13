import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:saturday/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'welcome to ziione\'s app',
      home: splashscreen(),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                onPressed: () {
                  playSound(1);
                },
                child: const Text(''),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  playSound(2);
                },
                child: const Text(''),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 134, 10, 243)),
                onPressed: () {
                  playSound(3);
                },
                child: const Text(''),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 8, 210, 126)),
                onPressed: () {
                  playSound(4);
                },
                child: const Text(''),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 234, 12, 138)),
                onPressed: () {
                  playSound(5);
                },
                child: const Text(''),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  playSound(6);
                },
                child: const Text(''),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  playSound(7);
                },
                child: const Text(''),
              ),
            )
          ],
        ),
      ),
    );
  }
}
