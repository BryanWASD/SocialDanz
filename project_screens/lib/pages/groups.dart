import 'package:flutter/material.dart';
import 'color_schemes.g.dart';

void main() {
  runApp(const GroupPage());
}

class GroupPage extends StatelessWidget {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Group Page';

    Widget groupsection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'This looks empty, lets fix that',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Join a group pressing the + button',
            ),
          ],
        ),
      ),
      /*3*/
    ],
  ),
);

    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      // theme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      title: title,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Groups', style: TextStyle(fontSize: 26),),
            Icon(Icons.group, size: 140,),
            groupsection,
            FloatingActionButton(
              onPressed: () {
              },
              backgroundColor: Colors.blue,
              child: Icon(Icons.add),
              ),
          ]
          ),
      ),
    );
  }
}
