import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  final player = AudioCache();

  void playSound(String sound){
    player.play('$sound.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad(Colors.blueAccent,'bongo'),
                  ),
                  Expanded(
                    child: buildDrumPad(Colors.redAccent, 'bip'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad(Colors.purpleAccent, 'clap1'),
                  ),
                  Expanded(
                    child: buildDrumPad(Colors.blueGrey, 'clap2'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad(Colors.orangeAccent, 'clap3'),
                  ),
                  Expanded(
                    child: buildDrumPad(Colors.cyanAccent, 'crash'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad(Colors.pinkAccent, 'how'),
                  ),
                  Expanded(
                    child: buildDrumPad(Colors.brown, 'ridebel'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FlatButton buildDrumPad(Color colorOfPad, String soundOfPad) {
    return FlatButton(
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      playSound(soundOfPad);
                    },
                    child: Container(
                      color: colorOfPad,
                    ),
                  );
  }
}

