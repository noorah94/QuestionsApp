import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  final Function nextQuestion;
  Btn(
      {super.key,
      required this.name,
      required this.color,
      required this.nextQuestion});

  late String name;
  late Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: () => nextQuestion(name == "True"? true:false),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: Text("$name"),
      ),
    );
  }
}
