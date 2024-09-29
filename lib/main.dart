import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 232, 227, 129),
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: const Color.fromARGB(255, 45, 206, 48),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.jpg'),
          ),
        ),
      ),
    );
  }
}
