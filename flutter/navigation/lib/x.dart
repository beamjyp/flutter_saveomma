import 'package:flutter/material.dart';

class ClassX extends StatefulWidget {
  final String x;
  ClassX(this.x);

  @override
  _ClassXState createState() => _ClassXState();
}

class _ClassXState extends State<ClassX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.x),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: new BoxDecoration(color: Colors.blue),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('X', style: TextStyle(fontSize: 100)),
              RaisedButton(
                child: Text('go to Y'),
                onPressed: () => Navigator.pushNamed(context, '/routeY'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
