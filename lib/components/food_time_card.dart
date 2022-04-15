import 'package:flutter/material.dart';

class FoodTimeCard extends StatelessWidget {
  List<Color> colors;
  AlignmentGeometry begin;
  AlignmentGeometry end;
  String assetPath;
  String count;
  String name;
  Offset offset;
  VoidCallback onTap;
  FoodTimeCard(
      {required this.colors,
      required this.begin,
      required this.end,
      required this.assetPath,
      required this.name,
      required this.count,
      required this.offset,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        height: 325,
        width: 220,
        padding: const EdgeInsets.all(25.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
                colors: this.colors, begin: this.begin, end: this.end),
          ),
          child: Stack(
            children: [
              Transform.translate(
                  offset: this.offset,
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Image(image: AssetImage(assetPath)))),
              Column(
                children: [
                  SizedBox(
                    height: 80.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    count,
                    style: TextStyle(fontSize: 40, letterSpacing: 1.0),
                  ),
                  Center(
                    child: Text(
                      "DIFFERENTS\nRECIPES",
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
