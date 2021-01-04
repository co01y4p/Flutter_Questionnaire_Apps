import 'package:flutter/material.dart';
import 'package:quesApps/screens/create_Question_Begin_Page.dart';
import 'package:quesApps/screens/action_Decide_Page.dart';
import 'package:quesApps/screens/signUp_Page.dart';
import 'package:quesApps/screens/login_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 24,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      home: SignUpPage(),
      routes: {
        CreateQuesBeginPage.routeName: (ctx) => CreateQuesBeginPage(),
        ActionDecidePage.routeName: (ctx) => ActionDecidePage(),
        //SignUpPage.routeName: (ctx) => SignUpPage(),
        LoginPage.routeName: (ctx) => LoginPage(),
      },
    );
  }
}

class MisceFunction extends StatefulWidget {
  @override
  _MisceFunctionState createState() => _MisceFunctionState();
}

class _MisceFunctionState extends State<MisceFunction> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
