import 'package:flutter/material.dart';

class ClassY extends StatefulWidget {
  final String y;
  ClassY(this.y);

  @override
  _ClassYState createState() => _ClassYState();
}

class _ClassYState extends State<ClassY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.y),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Y', style: TextStyle(fontSize: 100)),
            RaisedButton(
              child: Text('go to Z'),
              onPressed: () => Navigator.pushNamed(context, '/routeZ'),
            )
          ],
        ),
      ),
    );
  }
}
