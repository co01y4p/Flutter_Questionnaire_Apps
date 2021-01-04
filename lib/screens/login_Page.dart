import 'package:flutter/material.dart';
import 'package:quesApps/main.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login-page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool _obscureText = true;

  String _password;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: TextFormField(
            //login id
            decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: "Username",
                hintText: "Where\'s your creativity?"),
            maxLength: 20,
            maxLines: 1,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus();
            },
            validator: (String value) {
              if (value.isEmpty) {
                return 'Please provide a value';
              }

              return null;
            },
            onSaved: null,
          ),
        ),
        Expanded(
          flex: 5,
          child: new TextFormField(
            //login id
            decoration: InputDecoration(
              suffixIcon: InkWell(
                child: Icon(Icons.remove_red_eye),
                onTap: () => _toggle(),
              ),
              labelText: "Password",
              hintText: "shhh.....",
              icon: const Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: const Icon(Icons.lock),
              ),
            ),
            maxLength: 20,
            maxLines: 1,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus();
            },
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Password is required';
              }

              return null;
            },
            onSaved: (val) => _password = val,
            obscureText: _obscureText,
          ),
        ),
      ],
    );
  }
}
