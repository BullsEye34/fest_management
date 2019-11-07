import 'package:fest_management/sports.dart';
import 'package:fest_management/technical.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'gaming.dart';
import 'mainstage.dart';
import 'offstage.dart';
import 'dart:ui';

class page0 extends StatefulWidget {
  const page0({Key key}) : super(key: key);

  @override
  _page0State createState() => _page0State();
}

class _page0State extends State<page0> {


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
            width: MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height / 1.05,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 0,
                color: Color(0x00000000),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: Center(
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: mainstage(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: offstage(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: technical(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: gaming(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
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
  bak(){
    SingleChildScrollView(
      child: Wrap(
        runAlignment: WrapAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: mainstage(),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: offstage(),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: technical(),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: gaming(),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: sports(),
          ),
        ],
      ),
    );
  }
}
