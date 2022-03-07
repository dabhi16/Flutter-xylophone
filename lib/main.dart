import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  Expanded tiles(
      {required Color color, required int number, required String alpha}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$number.wav');
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          primary: color,
        ),
        child: Text(alpha),
      ),
    );
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
              tiles(color: const Color(0xff66dff4), number: 1, alpha: 'A'),
              tiles(color: const Color(0xff57c0fa), number: 2, alpha: 'B'),
              tiles(color: const Color(0xff47a0ff), number: 3, alpha: 'C'),
              tiles(color: const Color(0xff738cfc), number: 4, alpha: 'D'),
              tiles(color: const Color(0xff9e77f8), number: 5, alpha: 'E'),
              tiles(color: const Color(0xffc97fdd), number: 6, alpha: 'F'),
              tiles(color: const Color(0xfff387c1), number: 7, alpha: 'G'),
            ],
          ),
        ),
      ),
    );
  }
}
