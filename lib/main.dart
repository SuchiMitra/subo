import 'package:flutter/material.dart';
import 'package:subarna/answer.dart';
import 'package:subarna/question.dart';

void main() => runApp(Subarna());

class Subarna extends StatefulWidget {
  @override
  _SubarnaState createState() => _SubarnaState();
}

class _SubarnaState extends State<Subarna> {
  var _answerIndex = 0;
  void _answerQuestion() {
    setState(() {
      _answerIndex = _answerIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': 'What is your name?',
        'answer': ['Subarna', 'Amit', 'Rony', 'Pritom']
      },
      {
        'questionText': 'What is your favorite animal?',
        'answer': ['Cow', 'Dog', 'Cat', 'Tiger']
      },
      {
        'questionText': 'What is your favorite sports?',
        'answer': ['Cricket', 'Football', 'Badminton', 'Cram']
      },
      {
        'questionText': 'What is your favorite laptop?',
        'answer': ['Asus', 'Hp', 'Dell', 'Lenevo']
      },
      {
        'questionText': 'What is your pet name?',
        'answer': ['Guddu', 'Gandu', 'Tom', 'Jerry']
      },
      {
        'questionText': 'What is your favorite phone?',
        'answer': ['Iphone', 'Redmi', 'Relme', 'Samsung']
      },
      {
        'questionText': 'What is your favorite car?',
        'answer': ['Lamborgini', 'BMW', 'Audi', 'Tyota']
      },
      {
        'questionText': 'What is your favorite football player?',
        'answer': ['Neymar', 'Messi', 'Ronaldo', 'M-Bappi']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('Subarna'),
        ),
        body: Center(
          child: Column(
            children: [
              Questions(question[_answerIndex]['questionText'] as String),
              ...(question[_answerIndex]['answer'] as List<String>)
                  .map((answer) {
                return Answers(_answerQuestion, answer);
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
