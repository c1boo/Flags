import 'package:flutter/material.dart';
import 'main_screen.dart';

void main(List<String> args) {
  runApp(Flags());
}

class Flags extends StatelessWidget {
  const Flags({super.key});

  Widget build(BuildContext context) {
    return const MaterialApp(title: "Flags Quiz", home: MainScreen());
  }
}
