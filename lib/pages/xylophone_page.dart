import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class XylophonePage extends StatefulWidget {
  XylophonePage({Key? key}) : super(key: key);

  @override
  _XylophonePageState createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  final AudioCache audioPlayer = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            playLocal();
          },
          child: Text('Play'),
        ),
      ),
    );
  }

  playLocal() {
    audioPlayer.play('note5.wav');
  }
}
