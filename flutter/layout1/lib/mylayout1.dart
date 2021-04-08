import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GridviewLayout'),
          backgroundColor: Colors.black87,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("1"),
              color: Colors.black12,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('2'),
              color: Colors.black26,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('3'),
              color: Colors.black38,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('4'),
              color: Colors.black45,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('5'),
              color: Colors.black54,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('6', style: TextStyle(color: Colors.white)),
              color: Colors.black87,
            ),
          ],
        ));
  }
}
