import 'package:flutter/material.dart';

import 'Btn.dart';

class Btns extends StatelessWidget {
  Btns({super.key, required this.nextQuestion});
  final Function nextQuestion;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Btn(name: "True", color: Colors.green, nextQuestion: nextQuestion),
          Btn(name: "False", color: Colors.red, nextQuestion: nextQuestion),
        ],
      ),
    );
  }
}
