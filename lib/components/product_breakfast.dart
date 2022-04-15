import 'package:flutter/material.dart';

class ProductBreakFast extends StatelessWidget {
  final String assetPath;
  final String text;
  final VoidCallback onTap;
  double width;
  double height;
  ProductBreakFast(
      {required this.assetPath,
      required this.text,
      required this.onTap,
      this.width = 120,
      this.height = 150});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                assetPath,
                height: height,
                width: width,
                fit: BoxFit.cover,
              ),
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
