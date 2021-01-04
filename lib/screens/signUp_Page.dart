import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:quesApps/providers/users_providers.dart';

class SignUpPage extends StatefulWidget {
  static const routeName = '/sign-up-page';

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  final emailFocusNode = FocusNode();
  final fnameFocusNode = FocusNode();
  final lnameFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  bool _obscureText = true;

  String _password;
  DateTime _selectedDate;
  String firstName;

  void onSubmit() {
    Provider.of<AuthProvider>(context).signup(firstName);
  }

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _presentDataPicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.utc(1950, 1, 1),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          TextFormField(
            //login id
            decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: "First Name",
                hintText: "Lets know each other!"),
            maxLength: 20,
            maxLines: 1,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus(lnameFocusNode);
            },
            focusNode: fnameFocusNode,
            validator: (String value) {
              if (value.isEmpty) {
                return 'Please provide a value';
              }

              return null;
            },

            onSaved: (value) {
              firstName = value;
            },
          ),
          TextFormField(
            //login id
            decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: "Last Name",
                hintText: "Yes, that Family name"),
            maxLength: 20,
            maxLines: 1,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus(passwordFocusNode);
            },
            focusNode: lnameFocusNode,
            validator: (String value) {
              if (value.isEmpty) {
                return 'Please provide a value';
              }

              return null;
            },

            onSaved: null,
          ),
          TextFormField(
            //login id
            decoration: const InputDecoration(
                icon: Icon(Icons.email),
                labelText: "Email Address",
                hintText: "For login, too to contact, update you"),
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
          TextFormField(
            //login id
            decoration: InputDecoration(
              suffixIcon: InkWell(
                child: Icon(Icons.remove_red_eye),
                onTap: () => _toggle(),
              ),
              labelText: "Password",
              hintText: "Always stay secured with us",
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
            focusNode: passwordFocusNode,
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Password is required';
              }

              return null;
            },
            onSaved: (val) => _password = val,
            obscureText: _obscureText,
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Text(
                  _selectedDate == null
                      ? 'Date of Birth:'
                      : 'Date of Birth: ${DateFormat.yMd().format(_selectedDate)}',
                ),
              ),
              Expanded(
                flex: 3,
                child: FlatButton(
                  onPressed: _presentDataPicker,
                  child: Text(
                    'Choose date',
                  ),
                ),
              )
            ],
          ),
          RaisedButton(
            child: Text('I\'m ready to go!'),
            onPressed: () => onSubmit(), //go homepage
          )
        ],
      ),
    );
  }
}
