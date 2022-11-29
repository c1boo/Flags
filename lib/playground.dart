import 'dart:math';
import 'package:flags/widgets.dart';
import 'package:flutter/material.dart';
import 'countries.dart';

class PlayGround extends StatefulWidget {
  PlayGround({super.key});

  @override
  State<PlayGround> createState() => _PlayGround();
}

class _PlayGround extends State<PlayGround> {
  List<String> flags = [];

  int score = 0, highScore = 0;

  String correctCountry = "", answer = "";

  void randomFlags() {
    flags = [];
    while (flags.length < 6) {
      int countryNo = Random().nextInt(countries.length);
      String country = countries[countryNo]['Code']!.toLowerCase();

      if (!flags.contains(country)) {
        flags.add(country);
      }
    }

    correctCountry = flags[Random().nextInt(6)];

    var format = countries.firstWhere(
        (element) => element['Code'] == correctCountry.toUpperCase())["Name"];
  }

  void checkAnswer() {
    if (answer == correctCountry) {
      setState(() {
        score++;
        randomFlags();
      });
    } else {
      setState(() {
        highScore = (score > highScore) ? score : highScore;
        score = 0;
        randomFlags();
      });
    }
  }

  @override
  void initState() {
    randomFlags();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 46, 46, 46),
          Color.fromARGB(255, 109, 109, 109)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        alignment: AlignmentDirectional.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Country(
                country: flags[0],
                voidCallBack: () {
                  answer = flags[0];
                  checkAnswer();
                },
              ),
              Country(
                country: flags[1],
                voidCallBack: () {
                  answer = flags[1];
                  checkAnswer();
                },
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Country(
                  country: flags[2],
                  voidCallBack: () {
                    answer = flags[2];
                    checkAnswer();
                  },
                ),
                Country(
                  country: flags[3],
                  voidCallBack: () {
                    answer = flags[3];
                    checkAnswer();
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Country(
                  country: flags[4],
                  voidCallBack: () {
                    answer = flags[4];
                    checkAnswer();
                  },
                ),
                Country(
                  country: flags[5],
                  voidCallBack: () {
                    answer = flags[5];
                    checkAnswer();
                  },
                ),
              ],
            ),
            QuizFlag(
                correctFlag: countries.firstWhere((element) =>
                    element['Code'] == correctCountry.toUpperCase())["Name"]!),
            ScoreTable(
              score: score,
              highScore: highScore,
            )
          ],
        ));
  }
}
