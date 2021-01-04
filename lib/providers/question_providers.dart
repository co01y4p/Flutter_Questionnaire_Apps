import 'package:flutter/foundation.dart';

enum QuestionType {
  LongAnswerTypeQuestion,
  ShortAnswerTypeQuestion,
  MathTypeQuestion,
  MCQTypeQuestion,
  BooleanTypeQuestion,
}

class Question with ChangeNotifier {
  final QuestionType questionType;
  final int questionIndex; //for random sequence
  final String questionTitle;
  final String questionDescription;

  Question({
    @required this.questionType,
    @required this.questionIndex,
    @required this.questionTitle,
    @required this.questionDescription,
  });
  //other attributes;

}

class LongAnswerTypeQuestion extends Question {
  final QuestionType questionType;
  final int questionIndex;
  final String questionTitle;
  final String questionDescription;
  //**************************
  final String answerWritten;
  LongAnswerTypeQuestion({
    @required this.questionType,
    @required this.questionIndex,
    @required this.questionTitle,
    @required this.questionDescription,
    @required this.answerWritten,
  }) : super(
          questionType: QuestionType.LongAnswerTypeQuestion,
          questionIndex: questionIndex,
          questionTitle: questionTitle,
          questionDescription: questionDescription,
        );
}

class ShortAnswerTypeQuestion extends Question {
  final QuestionType questionType;
  final int questionIndex;
  final String questionTitle;
  final String questionDescription;
  //**************************
  final String answerWritten;
  final int numberOfCharacter;
  ShortAnswerTypeQuestion({
      @required this.questionType,
      @required this.questionIndex,
      @required this.questionTitle,
      @required this.questionDescription,
      @required this.answerWritten,
      @required this.numberOfCharacter})
      : super(
          questionType: QuestionType.ShortAnswerTypeQuestion,
          questionIndex: questionIndex,
          questionTitle: questionTitle,
          questionDescription: questionDescription,
        );
}

class MathTypeQuestion extends Question {
  final QuestionType questionType;
  final int questionIndex;
  final String questionTitle;
  final String questionDescription;
  //*************
  final int numberOfOptions;
  final String answerWritten;
  MathTypeQuestion({
    @required this.questionType,
    @required this.questionIndex,
    @required this.questionTitle,
    @required this.questionDescription,
    @required this.numberOfOptions,
    @required this.answerWritten, //new
  }) : super(
          questionType: QuestionType.MathTypeQuestion,
          questionIndex: questionIndex,
          questionTitle: questionTitle,
          questionDescription: questionDescription,
        );
}

class MCQTypeQuestion extends Question {
  final QuestionType questionType;
  final int questionIndex;
  final String questionTitle;
  final String questionDescription;
  //**************************
  final int numberOfOptions;
  final List optionTitle;
  MCQTypeQuestion({
    @required this.questionType,
    @required this.questionIndex,
    @required this.questionTitle,
    @required this.questionDescription,
    @required this.numberOfOptions,
    @required this.optionTitle,
  }) : super(
          questionType: QuestionType.MCQTypeQuestion,
          questionIndex: questionIndex,
          questionTitle: questionTitle,
          questionDescription: questionDescription,
        );
}

class BooleanTypeQuestion extends Question {
  final QuestionType questionType;
  final int questionIndex;
  final String questionTitle;
  final String questionDescription;
  //**********
  final int numberOfOptions;
  final List optionTitle;
  BooleanTypeQuestion({
    @required this.questionType,
    @required this.questionIndex,
    @required this.questionTitle,
    @required this.questionDescription,
    @required this.numberOfOptions,
    @required this.optionTitle,
  }) : super(
          questionType: QuestionType.BooleanTypeQuestion,
          questionIndex: questionIndex,
          questionTitle: questionTitle,
          questionDescription: questionDescription,
        );
}
