import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flags Quiz"),
        backgroundColor: const Color.fromARGB(255, 46, 46, 46),
      ),
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 46, 46, 46),
            Color.fromARGB(255, 109, 109, 109)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          alignment: AlignmentDirectional.center,
          child: Image.asset(
            'assets/globe.png',
            scale: 1,
          )),
    );
  }
}
