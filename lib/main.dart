import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Magic Ball'),
          ),
          backgroundColor: Colors.black,
          body: Magic8Ball(),
        ),
      ),
    );

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int SwapBall = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    SwapBall = Random().nextInt(5) + 1;
                  },
                );
              },
              child: Image.asset('images/ball$SwapBall.png'),
            ),
          ),
        ],
      ),
    );
  }
}
