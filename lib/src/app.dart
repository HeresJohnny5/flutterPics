import 'package:flutter/material.dart';
import 'package:http/http.dart' show get; // 'show get' tells Dart that rather import all functionality that comes with the http package, just import the 'get' function from the http package 
import 'dart:convert';
import 'models/image_model.dart';
import 'widgets/image_lists.dart';

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
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;

    // the response variable is not actual JSON data, rather the response variable is an object that provides useful info that comes back from the 'get' API
    final response = await get('https://jsonplaceholder.typicode.com/photos/$counter');

    final imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage, // the fetchImage does not have parenthesis as you don't want it invoked when the build method is invoked which happens automatically 
          child: Icon(Icons.add),
        ),
      ), // placing trailing commas makes certain the code does not collaps in VS Code
    );
  }
}