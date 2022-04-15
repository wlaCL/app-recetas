import 'package:flutter/material.dart';

class ButtonBorder extends StatelessWidget {
  String text;
  VoidCallback onTap;
  ButtonBorder({
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, right: 16.0),
      child: ElevatedButton(
        child: const Text(
          "FILTER",
        ),
        onPressed: this.onTap,
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 12.0),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          //shadowColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(
            Color(0xffFF114E),
          ),
          //overlayColor: MaterialStateProperty.all(Color(0xffFF114E)),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          side: MaterialStateProperty.all(
            BorderSide(color: Colors.white, width: 1),
          ),

          //overlayColor: MaterialStateProperty.all(Colors.transparent),
          //shadowColor: MaterialStateProperty.all(Colors.transparent)
          //foregroundColor: MaterialStateProperty.all(Colors.transparent)
        ),
      ),
    );
  }
}
