import 'package:flutter/foundation.dart';

class UserAnswers{
  //String answerID;
  String userID;
  String userName;
  DateTime userLoginTime;
  DateTime userStartAnswerTime;
  DateTime userSubmitAnswerTime;
  List allAnswer;

}

class Answer extends UserAnswers{
  String answerWritten;
  int answerPickedSingle;
  List answerPickedMultiple;
  //submit answer to server
}