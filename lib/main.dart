import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MagicBall(),
      ),
    );

class MagicBall extends StatelessWidget {
  // const MagicBall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Magic 8 ball'),
        backgroundColor: Colors.teal[800],
      ),
      body: MagicBall1(),
    );
  }
}

class MagicBall1 extends StatefulWidget {
  //const MagicBall1({Key? key}) : super(key: key);

  @override
  _MagicBall1State createState() => _MagicBall1State();
}

class _MagicBall1State extends State<MagicBall1> {
  int number;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            number = Random().nextInt(5) + 1;
            print('I got Clicked!');
          });
        },
        child: Image.asset('images/ball$number.png'),
      ),
    );
  }
}
