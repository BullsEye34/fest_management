import 'package:flutter/material.dart';

import 'login.dart';

void main() => runApp(start());

class start extends StatefulWidget {
  @override
  _startState createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login()
    );
  }
}
