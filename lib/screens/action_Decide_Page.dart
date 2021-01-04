import 'package:flutter/material.dart';

class ActionDecidePage extends StatelessWidget {
  static const routeName = '/action-decide-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Material(
              color: Colors.yellow,
              child: InkWell(
                splashColor: Colors.purple,
                onTap: () {
                  print('tap1');
                },
              ),
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.green,
              child: InkWell(
                splashColor: Colors.pink,
                onTap: () {
                  print('tap2');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
