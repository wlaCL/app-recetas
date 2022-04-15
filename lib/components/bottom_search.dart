import 'package:flutter/material.dart';

typedef SearchCallBack = Function(String word);

class BottonSearc extends StatelessWidget {
  late TextEditingController searchController;
  final SearchCallBack searchCallBack;
  BottonSearc({
    required String defalultValue,
    required this.searchCallBack,
  }) {
    this.searchController = TextEditingController(text: defalultValue);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: this.searchController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  focusColor: Colors.black38,
                  hoverColor: Colors.black38,
                  hintText: "Search your recipe",
                  hintStyle: TextStyle(color: Colors.white70),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
