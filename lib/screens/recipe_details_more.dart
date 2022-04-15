import 'package:app_recetas/components/rounded_image.dart';
import 'package:app_recetas/components/step_widget.dart';
import 'package:flutter/material.dart';

import 'package:app_recetas/components/bottom_icon.dart';
import 'package:app_recetas/components/play_video.dart';

class RecipeDetailsMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          PlayVideo(() {
            print("hola");
          }),
        ],
      ),
      body: DefaultTextStyle(
        style: TextStyle(color: Colors.black),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 300.0),
                    child: Text("French Toast",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100, top: 20),
                    child: const Text(
                      "In a small bowl, combine, cinnamon, nutmeg and sugar and set aside briefly.",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: BottonIcon(
                            filePath: 'assets/fire-1.png',
                            text: '65%',
                            line: true,
                            color: Colors.black45,
                          ),
                        ),
                        Expanded(
                          child: BottonIcon(
                            //filePath: 'assets/fire.png',
                            text: 'Vegetarian',
                            line: true,
                            color: Colors.black45,
                          ),
                        ),
                        Expanded(
                          child: BottonIcon(
                            filePath: 'assets/time_black.png',
                            text: '10 Min',
                            line: false,
                            color: Colors.black45,
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 20.0,
                  ),
                ]..addAll(List.generate(10, (index) {
                    return StepWidget(
                      text:
                          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
                      number: index + 1,
                      heigth: 100,
                    );
                  })),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Colors.black38, offset: Offset(0, 0.5))
                ]),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RoundedImage('assets/favorites/Bitmap-6.png'),
                        RoundedImage('assets/favorites/Bitmap-7.png'),
                        RoundedImage('assets/favorites/Bitmap-8.png'),
                        RoundedImage('assets/favorites/Bitmap-7.png'),
                        RoundedImage('assets/favorites/Bitmap-8.png'),
                        RoundedImage('assets/favorites/Bitmap-7.png'),
                        InkWell(
                          onTap: () {
                            print("more image");
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8),
                                //border: Border.all(color: Colors.black38),
                              ),
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.add,
                                size: 40,
                                color: Colors.white,
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// muestra cada nuno de los pasos

