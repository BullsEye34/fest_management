import 'package:fest_management/sports.dart';
import 'package:fest_management/technical.dart';
import 'package:flutter/material.dart';

import 'gaming.dart';
import 'mainstage.dart';
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
                child: SingleChildScrollView(
                  child: Wrap(
                    runAlignment: WrapAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: mainstage(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: offstage(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: technical(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: gaming(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: sports(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
