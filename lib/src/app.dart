import 'package:flutter/material.dart';

// class App defines a new class called App that takes the functionality inside of the Stateful class
class App extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _AppState();
    }
}

class _AppState extends State<App> {
  int counter = 0;

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