import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      print(
          'Buttons got pressed. leftDice: $leftDiceNumber and rightDice: $rightDiceNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 2,
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('assets/images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            // flex: 1,
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('assets/images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
