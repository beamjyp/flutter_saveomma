import 'package:flutter/material.dart';
import 'main.dart';

class Regis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(70.0),
          child: Center(child: Text('testroute')),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ));
            },
            child: Text('Home'),
          ),
        )
      ],
    );
  }
}
