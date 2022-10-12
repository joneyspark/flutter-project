import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XyloPhoneView extends StatelessWidget {
  const XyloPhoneView({super.key});

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    void playSound(int soundNumber) {
      player.play(
        AssetSource('note$soundNumber.wav'),
      );
    }

    Expanded buildKey({Color? color, int? soundNum}) {
      return Expanded(
        child: FloatingActionButton(
          backgroundColor: color,
          onPressed: (() {
            playSound(1);
          }),
          child: const Text("Play"),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Xylophone"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red, soundNum: 1),
            buildKey(color: Colors.blue, soundNum: 2),
            buildKey(color: Colors.green, soundNum: 3),
            buildKey(color: Colors.yellow, soundNum: 4),
            buildKey(color: Colors.pink, soundNum: 5),
            buildKey(color: Colors.orange, soundNum: 6),
          ],
        ),
      ),
    );
  }
}
