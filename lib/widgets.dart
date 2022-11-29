import 'package:flutter/material.dart';

class Country extends StatefulWidget {
  final String country;
  final Function voidCallBack;

  const Country({required this.country, required this.voidCallBack, super.key});

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8),
        child: GestureDetector(
          //A widget that clips its child using a rounded rectangle.
          onTap: (() => widget.voidCallBack()),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            //getting the image from the country name
            child: Image.asset(
              'assets/flags/${widget.country}.png',
              width: MediaQuery.of(context).size.width * 0.3,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
        ));
  }
}

class QuizFlag extends StatelessWidget {
  String correctFlag;

  QuizFlag({required this.correctFlag, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(35),
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.2),
          borderRadius: BorderRadius.circular(10),
          border:
              Border.all(color: const Color.fromRGBO(0, 0, 0, 0.2), width: 3),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.2),
                spreadRadius: 2,
                blurRadius: 2)
          ]),
      child: Text(
        correctFlag,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 25, color: Color.fromARGB(209, 218, 228, 82)),
      ),
    );
  }
}

class ScoreTable extends StatelessWidget {
  int score, highScore;

  ScoreTable({required this.score, required this.highScore, super.key});

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
            child: Text("Your Score : $score",
                style: const TextStyle(fontSize: 26, color: Colors.white)),
          ),
          //A thin horizontal line, with padding on either side.
          const Divider(
            color: Colors.white,
            height: 2,
          ),
          Container(
            child: Text("Best Score : $highScore",
                style: const TextStyle(fontSize: 26, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
