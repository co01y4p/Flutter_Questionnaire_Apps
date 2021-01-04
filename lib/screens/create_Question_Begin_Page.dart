import 'package:flutter/material.dart';

class CreateQuesBeginPage extends StatefulWidget {
  static const routeName = '/create-questions-beginpage';
  @override
  _CreateQuesBeginPageState createState() => _CreateQuesBeginPageState();
}

class _CreateQuesBeginPageState extends State<CreateQuesBeginPage> {
  bool _randomQuesOrderBool = false;
  bool _randomOptionOrderBool = false;
  bool _setTimerBool = false;
  bool _recordTimeBool = false;
  bool _streamBool = false;

  Widget _buildSwitchListTile(
    String titleOfSwitch,
    String descriptionOfSwitch,
    bool currentVal,
    Function updateVal,
  ) {
    return SwitchListTile(
      title: Text(titleOfSwitch),
      value: currentVal,
      onChanged: updateVal,
      subtitle: Text(descriptionOfSwitch),
    );
  }

  final _authorFocusNode = FocusNode();
  final _descriptionFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.title),
                labelText: "Title",
                hintText: "Enter your project name"),
            maxLength: 30,
            maxLines: 1,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus(_authorFocusNode);
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
            decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: "Author",
                hintText: "Enter your name as an author"),
            maxLength: 50,
            maxLines: 1,
            focusNode: _authorFocusNode,
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus(_descriptionFocusNode);
            },
            onSaved: null,
            validator: null,
          ),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.description),
                labelText: "Description",
                hintText: "Enter your description"),
            maxLines: 2,
            maxLength: 100,
            focusNode: _descriptionFocusNode,
            onSaved: null,
            validator: null,
          ),
          Divider(),
          _buildSwitchListTile(
            'Random Question Order',
            'Random the order of questions to be displayed',
            _randomQuesOrderBool,
            (newValue) {
              setState(
                () {
                  _randomQuesOrderBool = newValue;
                },
              );
            },
          ),
          _buildSwitchListTile(
            'Random Option Order',
            'Random the order of options to be chosen',
            _randomOptionOrderBool,
            (newValue) {
              setState(
                () {
                  _randomOptionOrderBool = newValue;
                },
              );
            },
          ),
          Divider(),
          _buildSwitchListTile(
            'Record Time',
            'Record the time used for answering',
            _recordTimeBool,
            (newValue) {
              setState(
                () {
                  _recordTimeBool = newValue;
                },
              );
            },
          ),
          _buildSwitchListTile(
            'Set Timer',
            'Limit the answering time',
            _setTimerBool,
            (newValue) {
              setState(
                () {
                  _setTimerBool = newValue;
                },
              );
            },
          ),
          Divider(),
          _buildSwitchListTile(
            'Stream',
            'Create multiple set of questions under a project',
            _streamBool,
            (newValue) {
              setState(
                () {
                  _streamBool = newValue;
                },
              );
            },
          ),
          Divider(
            height: 50,
          ),
          RaisedButton(
              child: Text('I\'m ready to create Questions!'), onPressed: null)
        ],
      ),
    );
  }
}
