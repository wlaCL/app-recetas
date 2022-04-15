import 'package:app_recetas/components/bottom_search.dart';
import 'package:app_recetas/components/button_border.dart';
import 'package:app_recetas/components/product_breakfast.dart';
import 'package:flutter/material.dart';

class BreakFastScreen extends StatefulWidget {
  @override
  State<BreakFastScreen> createState() => _BreakFastScreenState();
}

class _BreakFastScreenState extends State<BreakFastScreen> {
  @override
  Widget build(BuildContext context) {
    String value = "";
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffFF114E), Color(0xffFF6D1B)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          Container(
            height: 450,
            width: 300,
            decoration: BoxDecoration(
              color: Color(0xffE2203D),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(60)),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Color(0xffB51930),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(60),
              ),
            ),
          ),
          AppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: RichText(
                text: TextSpan(
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'YOUR CUSONIZED\n',
                    ),
                    TextSpan(
                        text: 'BREAKFAST',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                  ],
                ),
              ),
            ),
            actions: [ButtonBorder(text: "Filter", onTap: () {})],
          ),
          Transform.translate(
            offset: Offset(0, 100),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView(
                children: [
                  Text(
                    "My Favorites",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ProductBreakFast(
                          text: "FRENCH \nTOAST",
                          assetPath: 'assets/favorites/favorite1.png',
                          onTap: () =>
                              Navigator.pushNamed(context, '/dish-details'),
                        ),
                        ProductBreakFast(
                          text: "FRENCH \nTOAST",
                          assetPath: 'assets/favorites/Bitmap-9.png',
                          onTap: () => print("hola"),
                        ),
                        ProductBreakFast(
                          text: "FRENCH \nTOAST",
                          assetPath: 'assets/favorites/Bitmap-8.png',
                          onTap: () => print("hola"),
                        ),
                        ProductBreakFast(
                          text: "FRENCH \nTOAST",
                          assetPath: 'assets/favorites/Bitmap-7.png',
                          onTap: () => print("hola"),
                        ),
                        ProductBreakFast(
                          text: "FRENCH \nTOAST",
                          assetPath: 'assets/favorites/Bitmap-6.png',
                          onTap: () => print("hola"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    childAspectRatio: 9 / 18,
                    children: [
                      ProductBreakFast(
                        text: "FRUIT SALAD",
                        assetPath: 'assets/favorites/Bitmap-1.png',
                        onTap: () => print("hola"),
                        width: 150,
                        height: 180,
                      ),
                      ProductBreakFast(
                        text: "FRENCH \nCHIKEN \nSKILLET",
                        assetPath: 'assets/favorites/Bitmap-2.png',
                        onTap: () => print("hola"),
                        width: 150,
                        height: 180,
                      ),
                      ProductBreakFast(
                        text: "THAI TOM YOUN SOUP",
                        assetPath: 'assets/favorites/Bitmap-3.png',
                        onTap: () => print("hola"),
                        width: 150,
                        height: 180,
                      ),
                      ProductBreakFast(
                        text: "FRENCH \nTOAST",
                        assetPath: 'assets/favorites/Bitmap-1.png',
                        onTap: () => print("hola"),
                        width: 150,
                        height: 180,
                      ),
                      ProductBreakFast(
                        text: "FRENCH \nTOAST",
                        assetPath: 'assets/favorites/Bitmap-2.png',
                        onTap: () => print("hola"),
                        width: 150,
                        height: 180,
                      ),
                      ProductBreakFast(
                        text: "FRENCH \nTOAST",
                        assetPath: 'assets/favorites/Bitmap-3.png',
                        onTap: () => print("hola"),
                        width: 150,
                        height: 180,
                      ),
                      ProductBreakFast(
                        text: "FRENCH \nTOAST",
                        assetPath: 'assets/favorites/Bitmap-1.png',
                        onTap: () => print("hola"),
                        width: 150,
                        height: 180,
                      ),
                      ProductBreakFast(
                        text: "FRENCH \nTOAST",
                        assetPath: 'assets/favorites/Bitmap-2.png',
                        onTap: () => print("hola"),
                        width: 150,
                        height: 180,
                      ),
                      ProductBreakFast(
                        text: "FRENCH \nTOAST",
                        assetPath: 'assets/favorites/Bitmap-3.png',
                        onTap: () => print("hola"),
                        width: 150,
                        height: 180,
                      ),
                      ProductBreakFast(
                        text: "FRENCH \nTOAST",
                        assetPath: 'assets/favorites/Bitmap-1.png',
                        onTap: () => print("hola"),
                        width: 150,
                        height: 180,
                      ),
                      ProductBreakFast(
                        text: "FRENCH \nTOAST",
                        assetPath: 'assets/favorites/Bitmap-2.png',
                        onTap: () => print("hola"),
                        width: 150,
                        height: 180,
                      ),
                      ProductBreakFast(
                        text: "FRENCH \nTOAST",
                        assetPath: 'assets/favorites/Bitmap-3.png',
                        onTap: () => print("hola"),
                        width: 150,
                        height: 180,
                      ),
                      ProductBreakFast(
                        text: "FRENCH \nTOAST",
                        assetPath: 'assets/favorites/Bitmap-1.png',
                        onTap: () => print("hola"),
                        width: 150,
                        height: 180,
                      ),
                      ProductBreakFast(
                        text: "FRENCH \nTOAST",
                        assetPath: 'assets/favorites/Bitmap-2.png',
                        onTap: () => print("hola"),
                        width: 150,
                        height: 180,
                      ),
                      ProductBreakFast(
                        text: "FRENCH \nTOAST",
                        assetPath: 'assets/favorites/Bitmap-3.png',
                        onTap: () => print("hola"),
                        width: 150,
                        height: 180,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottonSearc(
              defalultValue: value,
              searchCallBack: requestSearch,
            ),
          )
        ],
      ),
    );
  }

  requestSearch(String word) {
    print(word);
  }
}
