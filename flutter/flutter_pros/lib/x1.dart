import 'package:flutter/material.dart';

class X1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.star, size: 50),
          Icon(Icons.star, size: 50),
          Icon(Icons.star, size: 50),
        ],
      ),
      ),
    );
  }
}
