import 'package:flutter/material.dart';
import 'widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  final bool playing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flags Quiz"),
        backgroundColor: const Color.fromARGB(255, 46, 46, 46),
      ),
      body: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 46, 46, 46),
            Color.fromARGB(255, 109, 109, 109)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          alignment: AlignmentDirectional.center,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/globe.png',
                  scale: 1.6,
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                      child: Text(
                        "Start",
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const ScoreTable()
              ])),
    );
  }
}
