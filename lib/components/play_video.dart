import 'package:flutter/material.dart';

class PlayVideo extends StatelessWidget {
  final VoidCallback onTap;
  PlayVideo(
    this.onTap,
  );
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              mini: true,
              backgroundColor: Color(0xffFF114E),
              onPressed: () {},
              child: Icon(Icons.play_arrow_outlined),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Watch Recipe",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
