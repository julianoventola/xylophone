import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class XylophonePage extends StatelessWidget {
  XylophonePage({Key? key}) : super(key: key);

  Expanded _buildSoundKey({required int index, required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final AudioCache audioPlayer = AudioCache();
          audioPlayer.play('note$index.wav');
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: Container(
          width: 150,
          height: 30,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSoundKey(index: 1, color: Colors.red),
            _buildSoundKey(index: 2, color: Colors.orange),
            _buildSoundKey(index: 3, color: Colors.yellow),
            _buildSoundKey(index: 4, color: Colors.green),
            _buildSoundKey(index: 5, color: Colors.teal),
            _buildSoundKey(index: 6, color: Colors.blue),
            _buildSoundKey(index: 7, color: Colors.purple),
          ],
        ),
      ),
    );
  }
}
