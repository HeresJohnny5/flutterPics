import 'package:flutter/material.dart';
import 'package:http/http.dart' show get; // 'show get' tells Dart that rather import all functionality that comes with the http package, just import the 'get' function from the http package 

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

  void fetchImage() {
    counter++;
    String url = 'https://jsonplaceholder.typicode.com/photos/$counter';

    // the setState method is provided when you extend the State class which is required anytime data changes and you want this component to update on the screen
    // setState requires that you pass in a function and inside said function sits logic which manipulates data
    Future<Response> get(url);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
        body: Text('$counter images'),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage, // the fetchImage does not have parenthesis as you don't want it invoked when the build method is invoked which happens automatically 
          child: Icon(Icons.add),
        ),
      ), // placing trailing commas makes certain the code does not collaps in VS Code
    );
  }
}