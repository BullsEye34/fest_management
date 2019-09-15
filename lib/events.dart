import 'package:flutter/material.dart';

import 'offstage.dart';

class events extends StatefulWidget {
  @override
  _eventsState createState() => _eventsState();
}

class _eventsState extends State<events> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/events.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
          child: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width / 1.05,
          height: MediaQuery.of(context).size.height / 1.05,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Center(
              child: Wrap(
                runAlignment: WrapAlignment.spaceEvenly,
                children: <Widget>[
                  offstage(),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
