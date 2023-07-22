import 'package:flutter/material.dart';
import 'package:questions_task_t2/controller.dart';
import 'package:questions_task_t2/widgets/answerContainer.dart';

import '../widgets/Btns.dart';
import '../widgets/IconsAnswer.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Controller info = Controller();

  getInfo(btnClicked) {
    setState(() {
      info.questionInfo(btnClicked);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AnswerConianer(currentQuestion: info.getQuestion()),
            Btns(
              nextQuestion: getInfo,
            ),
            IconsAnswer(answers: info.answers),
          ],
        ),
      ),
    );
  }
}
