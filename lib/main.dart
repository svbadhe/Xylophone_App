import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class ContainerMaker extends StatelessWidget {
  final Color color;
  final int number;
  const ContainerMaker({Key key, this.color, this.number}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: color,
        child: FlatButton(
          onPressed: (){
            final player = AudioCache();
            player.play("note$number.wav");
          },
          child: Text("Note $number"),
        ),
      ),
    );
  }
}


void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey.shade600,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ContainerMaker(color: Colors.deepPurple.shade100, number: 1,),
            ContainerMaker(color: Colors.deepPurple.shade200, number: 2,),
            ContainerMaker(color: Colors.deepPurple.shade300, number: 3,),
            ContainerMaker(color: Colors.deepPurple.shade400, number: 4,),
            ContainerMaker(color: Colors.deepPurple.shade500, number: 5,),
            ContainerMaker(color: Colors.deepPurple.shade600, number: 6,),
            ContainerMaker(color: Colors.deepPurple.shade700,number: 7,),
          ],
        ),
      ),
    ),
  ),
);