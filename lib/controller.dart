import 'package:questions_task_t2/classes/question.dart';

class Controller {
  List<Question> questions = [];
  //String currentQuestion = "A group of crocodiles are called shrewdness";
  List<String> answers = List<String>.generate(10, (int index) => "none");
  int index = 1;

  Controller() {
    questions
        .add(Question("A group of crocodiles are called shrewdness", false));
    questions
        .add(Question("Dogs can understand up to 250 hand gestures", true));
    questions.add(Question("A hair of a polar bear's fur is white", false));
    questions.add(Question(
        "The Indian elephant is larger than the African elephant", false));
    questions.add(Question("A snail can sleep for up to 3 months", false));
    questions.add(Question("Apes cannot laugh", false));
    questions.add(
        Question("Penguins cant be found on the continent of Africa", false));
    questions.add(Question("The Amazon River has native dolphins", true));
    questions.add(Question("A slug has four noses", true));
    questions.add(
        Question("A Peregrine Falcon is the fastest bird in the world", true));
  }

  void checkAnswer(bool btnClicked) {
    if (index <= questions.length) {
      if ((btnClicked && questions[index - 1].answer == true) ||
          (!btnClicked && questions[index - 1].answer == false))
        answers[index - 1] = "True";
      else
        answers[index - 1] = "False";
    }
  }

  String getQuestion() {
    if (index - 1 < questions.length) return questions[index - 1].question;

    return "Finish.. \nThe number of correct answer is ${answers.where((e) => e == "True").length}";
  }

  void nextQuestion() {
    if (index <= questions.length) index++;
  }

  questionInfo(btnClicked) {
    try {
      checkAnswer(btnClicked);
      nextQuestion();
      // ignore: empty_catches
    } catch (e) {}
  }
}
