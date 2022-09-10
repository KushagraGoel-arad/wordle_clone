import 'dart:html';

import 'package:flutter/material.dart';

class WordleKey extends StatelessWidget {
  final String letter;
  const WordleKey(this.letter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget keyCap;
    double width = 40;
    if (letter == "_") {
      keyCap = Icon(
        Icons.keyboard_return,
        size: 20,
      );
    } else if (letter == "+") {
      keyCap = Icon(
        Icons.backspace_outlined,
        size: 20,
      );
    } else {
      width = 60;
      keyCap = Text(
        letter,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      );
    }
    return Container(
      width: 40,
      height: 60,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        color: Color.fromARGB(44, 44, 44, 44),
      ),
      child: keyCap,
    );
  }
}
