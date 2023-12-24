import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(Colors.red, "assets/audios/note1.wav"),
                buildKey(Colors.orange, "assets/audios/note2.wav"),
                buildKey(Colors.yellow, "assets/audios/note3.wav"),
                buildKey(Colors.green, "assets/audios/note4.wav"),
                buildKey(Colors.teal, "assets/audios/note5.wav"),
                buildKey(Colors.blue, "assets/audios/note6.wav"),
                buildKey(Colors.purple, "assets/audios/note7.wav"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void playSound(String name) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio(name),
    );
    assetsAudioPlayer.play();
  }

  Expanded buildKey(Color color, String sound) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ),
        child: const Text("Click Me..."),
        onPressed: () {
          playSound(sound);
        },
      ),
    );
  }
}
