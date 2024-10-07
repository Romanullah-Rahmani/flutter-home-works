import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(DiceApp());

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice App',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 185, 99, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 52, 222),
          title: const Text(
            'Dice App',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: const DiceAction(),
      ),
    );
  }
}

class DiceAction extends StatefulWidget {
  const DiceAction({super.key});

  @override
  State<DiceAction> createState() => _DiceActionState();
}

class _DiceActionState extends State<DiceAction> {
  int dice1 = 1;
  int dice2 = 2;

  void changeDiceNumber() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: changeDiceNumber,
              child: Image.asset(
                'images/dice_$dice1.png',
                width: 170,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextButton(
              onPressed: changeDiceNumber,
              child: Image.asset(
                'images/dice_$dice2.png',
                width: 170,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
