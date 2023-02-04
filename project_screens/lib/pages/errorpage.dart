import 'package:flutter/material.dart';
import 'color_schemes.g.dart';

void main() => runApp(const ErrorPage());

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      // theme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.settings_outlined, size: 140, color: Colors.blue), 
            Text('Internal Error', style: TextStyle(fontSize: 20),),
            Text('An unusual error has ocurred', style: TextStyle(fontSize: 20)),
            ]
          ),
        ),
      ),
    );
  }
}