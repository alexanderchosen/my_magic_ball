import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.indigoAccent,
          centerTitle: true,
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicBall = 1;

  void changeBall () {
    setState(() {
      magicBall = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
               changeBall();
              },
                child: Image.asset('images/ball$magicBall.png'),
            ),
          ),
        ],
      ),
    );
  }
}

