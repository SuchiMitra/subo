import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
final String questionText;
Questions(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
    );
  }
}