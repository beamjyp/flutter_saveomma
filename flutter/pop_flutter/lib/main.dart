import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (secondContext) => Center(
          child: MaterialButton(
            child: Text(
              "SnackBar",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
            // Using the `Builder` `BuildContext`, named `secondContext` we can reach the `Scaffold` ancestor.
            onPressed: () => Scaffold.of(secondContext).showSnackBar(
              SnackBar(
                content: Text("Oh! You clicked me!"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
