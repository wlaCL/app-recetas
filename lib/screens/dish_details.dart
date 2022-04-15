import 'package:app_recetas/components/bottom_icon.dart';
import 'package:flutter/material.dart';

class DishDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffFF114E),
                Color(0xffFF6D1B),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
        ),
        Positioned(
          top: 250,
          child: Container(
            height: 450,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(80),
              ),
              color: Color(0xffE2203D).withOpacity(0.22),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/Recipe-01.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Transform.translate(
                offset: Offset(0, -25),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        //mini: true,
                        onPressed: () {},
                        child: Icon(
                          Icons.play_arrow,
                          size: 30,
                          color: Color(0xffF43E30),
                        ),
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25)))),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/recipe_details-more');
                          },
                          child: Text(
                            "READ MORE",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ))
                    ]),
              ),
            ),
            SizedBox(
              width: 200,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "French \nToast",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          letterSpacing: 1.5),
                    ),
                    Text(
                      "Laborum id ea id fugiat ut. Exercitation enim voluptate ea aliquip occaecat. Id sint minim culpa aute dolor consequat in.",
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 14.0),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 16.0),
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: BottonIcon(
                          filePath: 'assets/fire.png',
                          text: '65%',
                          line: true,
                          color: Colors.white70),
                    ),
                    Expanded(
                      child: BottonIcon(
                          //filePath: 'assets/fire.png',
                          text: 'Vegetarian',
                          line: true,
                          color: Colors.white70),
                    ),
                    Expanded(
                      child: BottonIcon(
                          filePath: 'assets/time.png',
                          text: '10 Min',
                          line: false,
                          color: Colors.white70),
                    )
                  ]),
            )
          ],
        )
      ]),
    );
  }
}
