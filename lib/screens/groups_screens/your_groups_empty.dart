import 'package:flutter/material.dart';
import 'package:socialdanz_views/themes/colors_palete.dart';

class NoGroupsScree extends StatelessWidget {
  const NoGroupsScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 42),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Your Groups',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )),
          const Padding(
              padding: EdgeInsets.only(top: 180),
              child: Icon(
                Icons.group,
                size: 200,
                color: kingBlue,
              )),
          const Text(
            '''This looks empty 
    let’s fix that''',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              'press the button for add a new groups',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 48),
            child: Icon(
              Icons.add_circle,
              size: 80,
              color: kingBlue,
            ),
          )
        ],
      ),
    );
  }
}
