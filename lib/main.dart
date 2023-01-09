import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void change(int x){
    final player = AudioPlayer();
    player.play(AssetSource('note$x.wav'));
  }

  TextButton buildnote(Color c, int y, double w){
    return TextButton(
      onPressed: (){
        change(y);
      },
      child: Container(
        width: w,
        height: 50,
        color: c,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Stack(
          children: [
            Row(
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                Container(
                  height: double.infinity,
                ),
                const SizedBox(width: 180.0,),
                Container(
                  height: 600,
                  width: 10,
                  color: Colors.brown,
                ),
                const SizedBox(width: 30.0,),
                Container(
                  height: 600,
                  width: 10,
                  color: Colors.brown,
                ),
                Container(
                  height: double.infinity,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: double.infinity,
                ),
                const SizedBox(height: 80.0,),
                buildnote(Colors.red, 1, 80.0),
                const SizedBox(height: 10.0,),
                buildnote(Colors.orange, 2, 110.0),
                const SizedBox(height: 10.0,),
                buildnote(Colors.yellow, 3, 140.0),
                const SizedBox(height: 10.0,),
                buildnote(Colors.green, 4, 170.0),
                const SizedBox(height: 10.0,),
                buildnote(Colors.pink, 5, 200.0),
                const SizedBox(height: 10.0,),
                buildnote(Colors.blue, 6, 230.0),
                const SizedBox(height: 10.0,),
                buildnote(Colors.purple, 7, 260.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
