import 'package:flutter/material.dart';
import 'x.dart';
import 'y.dart';
import 'z.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ClassX('ClassX'), routes: {
      '/routeX': (context) => ClassX('screen X'),
      '/routeY': (context) => ClassY('screen Y'),
      '/routeZ': (context) => ClassZ('screen Z'),
    });
  }
}
