import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'playground.dart';

void main(List<String> args) {
  runApp(const Flags());
}

class Flags extends StatefulWidget {
  const Flags({super.key});

  @override
  State<Flags> createState() => _Flags();
}

class _Flags extends State<Flags> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flags Quiz",
        home: Scaffold(
          body: PlayGround(),
        ));
  }
}
