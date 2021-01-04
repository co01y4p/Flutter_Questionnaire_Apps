import 'package:flutter/foundation.dart';

class User {
  String id;
  String firstName;
  String lastName;
  String emailAdd;
  String password;

  User({
    @required this.id,
    @required this.firstName,
    @required this.lastName,
    @required this.emailAdd,
    @required this.password,
  });

  String getFullName() {
    return firstName + ' ' + lastName;
  }
}

class AuthProvider with ChangeNotifier {
  String accessToken;
  User user;
  // login, signup, refreshtoken
  void signup(String firstName) {
    //http
  }
  void login() {
    //user = new User(...)
    // accessToken = ...
  }
  String getName() {
    return user == null ? null : user.firstName;
  }

  User getUser() {
    return user == null ? null : user;
  }
}

//user.getFullName()
