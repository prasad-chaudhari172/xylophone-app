// ignore_for_file: prefer_const_constructors, duplicate_ignore, invalid_required_positional_param, unused_local_variable, unnecessary_new

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Xylophone App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget soundTile(@required Color color, @required String soundNumber) {
    final player = new AudioCache();

    return Expanded(
      child: TextButton(
        onPressed: () {
          player.play("note$soundNumber.wav");
        },
        child: Text(''),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          //minimumSize: MaterialStateProperty.all(Size.fromHeight(80)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            soundTile(Colors.red, "1"),
            soundTile(Colors.orange, "2"),
            soundTile(Colors.yellow, "3"),
            soundTile(Colors.green, "4"),
            soundTile(Colors.teal, "5"),
            soundTile(Colors.blue, "6"),
            soundTile(Colors.purple, "7"),
          ],
        ),
      ),
    );
  }
}
