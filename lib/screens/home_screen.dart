// ignore_for_file: use_key_in_widget_constructors

import 'package:app_recetas/components/circle_widget.dart';
import 'package:app_recetas/components/food_time_card.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101621),
      body: Stack(
        children: [
          Transform.translate(
            offset: const Offset(60, -60),
            child: Align(
              alignment: Alignment.topRight,
              child: Image.asset('assets/huevo_frito.png'),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              children: [
                const Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 500,
                    width: 400,
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(90)),
                      color: Color(0xff222B3B),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome Back",
                  style: TextStyle(color: Color(0xffA1A5AB), fontSize: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150, top: 30),
                  child: Text("What do you want to cook today?",
                      style: TextStyle(fontSize: 35)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20.0,
                        ),
                        FoodTimeCard(
                          onTap: () => showPageBreak(context),
                          assetPath: 'assets/sandwich.png',
                          name: "Breakfast",
                          count: "245+",
                          colors: [
                            Color(0xffFF114E),
                            Color(0xffFF6D1B),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          offset: Offset(0, -25),
                        ),
                        const SizedBox(
                          width: 1.0,
                        ),
                        FoodTimeCard(
                          onTap: () => showPageBreak(context),
                          assetPath: 'assets/ramen.png',
                          name: "Lunch",
                          count: "358+",
                          colors: [
                            Color(0xff3023AE),
                            Color(0xffC86DD7),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                          offset: Offset(0, -35),
                        ),
                        const SizedBox(
                          width: 1.0,
                        ),
                        FoodTimeCard(
                          onTap: () => showPageBreak(context),
                          assetPath: 'assets/ramen.png',
                          name: "Dinners",
                          count: "245+",
                          colors: [
                            Color(0xff3023AE),
                            Color(0xff10A97E),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomRight,
                          offset: Offset(0, -35),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleWidget(
                      circleColor: Color(0xff17824B),
                      children: [
                        Text(
                          "WHAT'S \n IN MY",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Transform.rotate(
                            angle: math.pi / 0.511,
                            child: Text(
                              "FRIDGE",
                              style: TextStyle(
                                  fontFamily: "Ultra Refresh",
                                  fontSize: 40.0,
                                  color: Colors.yellow),
                            ),
                          ),
                        )
                      ],
                    ),
                    CircleWidget(
                      circleColor: Color(0xff1E5CFC),
                      children: [
                        Text(
                          "INGREDIENTS",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Transform.rotate(
                            angle: math.pi / 0.511,
                            child: Text(
                              "SCAN\nCOOK",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Ultra Refresh",
                                  fontSize: 40.0,
                                  color: Colors.yellow),
                            ),
                          ),
                        )
                      ],
                    ),
                    CircleWidget(
                      circleColor: Color(0xffFFEB00),
                      children: [
                        Text(
                          "ADD MY",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Transform.rotate(
                            angle: math.pi / 0.511,
                            child: Text(
                              "RECIPE",
                              style: TextStyle(
                                  fontFamily: "Ultra Refresh",
                                  fontSize: 40.0,
                                  color: Colors.blue),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  showPageBreak(BuildContext context) {
    Navigator.pushNamed(context, '/breakfast');
  }
}
