import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  Color circleColor;
  List<Widget> children;

  CircleWidget({
    required this.circleColor,
    required this.children,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 5),
      height: 130,
      width: 130,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: this.circleColor),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: this.children,
      ),
    );
  }
}
