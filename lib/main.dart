import 'package:flutter/material.dart'; // how we import from a third party package
// this package grants you access to classes or widgets MaterialApp, Scaffold, AppBar, Text, etc.

void main() {
  var app = MaterialApp(
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

  runApp(app);
}
