import 'package:flutter/material.dart';

class IconsAnswer extends StatelessWidget {
  IconsAnswer({super.key, required this.answers});

  late List<String> answers;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (var answer in answers)
          answer == "none"
              ? Icon(
                  Icons.check,
                  color: Colors.black,
                )
              : answer == "True"
                  ? Icon(
                      Icons.check,
                      color: Colors.green,
                    )
                  : Icon(
                      Icons.close,
                      color: Colors.red,
                    )
      ],
    );
  }
}
