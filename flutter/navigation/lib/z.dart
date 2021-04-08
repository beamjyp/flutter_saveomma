import 'package:flutter/material.dart';

class ClassZ extends StatefulWidget {
  final String z;
  ClassZ(this.z);

  @override
  _ClassZState createState() => _ClassZState();
}

class _ClassZState extends State<ClassZ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.z),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Z', style: TextStyle(fontSize: 100)),
            RaisedButton(
              child: Text('return to X'),
              onPressed: () => Navigator.pushNamed(context, '/routeX'),
            )
          ],
        ),
      ),
    );
  }
}
