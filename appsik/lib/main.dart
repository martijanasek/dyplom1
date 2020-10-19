import 'package:flutter/material.dart';
import './widgets/start.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Applergia',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appsik',
      home: Start(),
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 87, 63, 1),
        accentColor: Color.fromRGBO(248, 247, 242, 1),
        cardColor: Color.fromRGBO(155, 227, 191, 1),
        errorColor: Color.fromRGBO(220, 53, 69, 1),
        disabledColor: Color.fromRGBO(158, 162, 162, 1),
        backgroundColor: Color.fromRGBO(230, 213, 138, 1),
        fontFamily: 'Quicksand',
      ),
    );
  }
}
