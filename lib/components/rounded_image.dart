import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String filePath;
  RoundedImage(
    this.filePath,
  );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("image");
      },
      child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
              height: 50,
              width: 50,
              child: Image.asset(filePath, fit: BoxFit.cover))),
    );
  }
}
