import 'package:flutter/material.dart';

class ScoreTable extends StatelessWidget {
  const ScoreTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 59, 59, 59),
        Color.fromARGB(255, 31, 28, 41),
        Color.fromARGB(255, 59, 59, 59)
      ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            child: const Text("Your Score : 0",
                style: TextStyle(fontSize: 26, color: Colors.white)),
          ),
          //A thin horizontal line, with padding on either side.
          const Divider(
            color: Colors.white,
            height: 2,
          ),
          Container(
            child: const Text("Best Score : 0",
                style: TextStyle(fontSize: 26, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
