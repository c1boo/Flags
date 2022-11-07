import 'package:flutter/cupertino.dart';
import 'countries.dart';

class PlayGround extends StatefulWidget {
  PlayGround({super.key});

  @override
  State<PlayGround> createState() => _PlayGround();
}

class _PlayGround extends State<PlayGround> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 46, 46, 46),
        Color.fromARGB(255, 109, 109, 109)
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      alignment: AlignmentDirectional.center,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200),
          itemCount: 6,
          itemBuilder: (context, index) => GestureDetector(
                child: const Text("Sikem"),
              )),
    );
  }
}
