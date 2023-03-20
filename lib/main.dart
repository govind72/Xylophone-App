import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int x) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    AssetsAudioPlayer.newPlayer().open(Audio("assets/note$x.wav"));
  }

  Widget create_widget(Color color, int y) {
    return Expanded(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color, // background
            //onPrimary: Colors.blue, // foreground
          ),
          onPressed: () {
            playsound(y);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white54,
          title: Center(
            child: Text(
              'Xylophone App',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.cyan
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              create_widget(Colors.red, 1),
              create_widget(Colors.orange, 2),
              create_widget(Colors.yellow, 3),
              create_widget(Colors.green, 4),
              create_widget(Colors.blue, 5),
              create_widget(Colors.indigo, 6),
              create_widget(Colors.deepPurple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
