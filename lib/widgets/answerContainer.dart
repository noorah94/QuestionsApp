import 'package:flutter/material.dart';



class AnswerConianer extends StatelessWidget {
   AnswerConianer({super.key,required this.currentQuestion});
  late String currentQuestion;

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.all(30),
              height: 150,
              child: Text(
                currentQuestion,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            );
  }
}