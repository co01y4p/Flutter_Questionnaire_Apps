import 'package:flutter/foundation.dart';

class Quiz {
  String quizID;
  String quizTitle;
  String author;
  String description;
  DateTime dateCreated;
  int colorID;
  int quizType;
  bool requireSignIn;
  //randomQues?
  //randomOptionOrder?
  //recordtime?
  //settimer?
  //stream?

  Quiz({
    @required this.quizID,
    @required this.quizTitle,
    @required this.author,
    @required this.description,
    @required this.dateCreated,
    @required this.colorID,
    @required this.quizType,
    @required this.requireSignIn,
  });
}

class QuizProvider with ChangeNotifier {
//getone, getall, add, update, delete, answer quiz
}
