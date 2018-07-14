import 'package:flutter/material.dart';

// class App defines a new class called App that takes the functionality inside of the StatelessWidget class
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Button pressed!');
          },
          child: Icon(Icons.add),
        ),
      ), // placing trailing commas makes certain the code does not collaps in VS Code
    );
  }
}