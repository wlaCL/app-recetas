import 'package:flutter/material.dart';

class BottonIcon extends StatelessWidget {
  final String? filePath;
  final String text;
  final bool line;
  final Color color;
  const BottonIcon({
    this.filePath,
    required this.text,
    required this.line,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        //mainAxisSize: MainAxisSize.min,
        children: [
          (filePath != null)
              ? Image.asset(
                  filePath!,
                  height: 30,
                  width: 30,
                )
              : Container(),
          Text(text,
              style: TextStyle(
                fontSize: 18.0,
              )),
          const SizedBox(
            width: 20.0,
          ),
          (line)
              ? Container(
                  width: 1,
                  height: 30,
                  color: color,
                )
              : Container(
                  width: 0,
                  height: 0,
                )
        ],
      ),
    );
  }
}
