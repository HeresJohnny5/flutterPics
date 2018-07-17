import 'package:flutter/material.dart';

// class App defines a new class called App that takes the functionality inside of the Stateful class
// whenever you call createState it's going to return an instance of the widget state class or _AppState
class App extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _AppState();
    }
}

// widget State class
class _AppState extends State<App> {
  int counter = 0; // instance variable that may change over time

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
        body: Text('$counter images'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // the setState method is provided when you extend the State class which is required anytime data changes and you want this component to update on the screen
            // setState requires that you pass in a function and inside said function sits logic which manipulates data
            setState(() { 
              counter += 1;
            });
          },
          child: Icon(Icons.add),
        ),
      ), // placing trailing commas makes certain the code does not collaps in VS Code
    );
  }
}