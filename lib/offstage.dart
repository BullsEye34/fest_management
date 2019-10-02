import 'package:fest_management/events/CookingWOFire/cookingWOFire.dart';
import 'package:fest_management/events/DumbCharades/dumb.dart';
import 'package:fest_management/events/Hogathon/hogathon.dart';
import 'package:fest_management/events/Musically/musically.dart';
import 'package:fest_management/events/Photography/photography.dart';
import 'package:fest_management/events/Poetry/poetry.dart';
import 'package:fest_management/events/Rangoli/rangoli.dart';
import 'package:fest_management/events/Sketching/sketching.dart';
import 'package:fest_management/events/TreasureHunt/treasureHunt.dart';
import 'package:flutter/material.dart';

import 'events/BegBorrowSteal/bbs.dart';

class offstage extends StatefulWidget {
  @override
  _offstageState createState() => _offstageState();
}

class _offstageState extends State<offstage> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Center(
            child: Text(
          "Offstage Events",
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      /*Colors.indigo[800],
                                Colors.indigo[700],
                                Colors.indigo[600],
                                Colors.indigo[500],*/
                      Colors.green[800],
                      Colors.green[700],
                      Colors.green[600],
                      Colors.green[500],
                      Colors.green[400],
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 17,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      transport(treasureHunt());
                    },
                    child: Text(
                      'Treasure Hunt',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      /*Colors.indigo[800],
                                Colors.indigo[700],
                                Colors.indigo[600],
                                Colors.indigo[500],*/
                      Colors.blue[800],
                      Colors.blue[700],
                      Colors.blue[600],
                      Colors.blue[500],
                      Colors.blue[400],
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 17,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      transport(hogathon());
                    },
                    child: Text(
                      'Hogathon',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      /*Colors.indigo[800],
                                Colors.indigo[700],
                                Colors.indigo[600],
                                Colors.indigo[500],*/
                      Colors.red[800],
                      Colors.red[700],
                      Colors.red[600],
                      Colors.red[500],
                      Colors.red[400],
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 17,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      transport(bbs());
                    },
                    child: Text(
                      'Beg Borrow Steal',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      /*Colors.indigo[800],
                                Colors.indigo[700],
                                Colors.indigo[600],
                                Colors.indigo[500],*/
                      Colors.purple[800],
                      Colors.purple[700],
                      Colors.purple[600],
                      Colors.purple[500],
                      Colors.purple[400],
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 17,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      transport(sketching());
                    },
                    child: Text(
                      'Sketching',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      /*Colors.indigo[800],
                                Colors.indigo[700],
                                Colors.indigo[600],
                                Colors.indigo[500],*/
                      Colors.indigo[800],
                      Colors.indigo[700],
                      Colors.indigo[600],
                      Colors.indigo[500],
                      Colors.indigo[400],
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 17,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      transport(rangoli());
                    },
                    child: Text(
                      'Rangoli',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      /*Colors.indigo[800],
                                Colors.indigo[700],
                                Colors.indigo[600],
                                Colors.indigo[500],*/
                      Colors.amber[800],
                      Colors.amber[700],
                      Colors.amber[600],
                      Colors.amber[500],
                      Colors.amber[400],
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 17,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      transport(poetry());
                    },
                    child: Text(
                      'Poetry',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      /*Colors.indigo[800],
                                Colors.indigo[700],
                                Colors.indigo[600],
                                Colors.indigo[500],*/
                      Colors.lime[800],
                      Colors.lime[700],
                      Colors.lime[600],
                      Colors.lime[500],
                      Colors.lime[400],
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 17,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      transport(photography());
                    },
                    child: Text(
                      'Photography',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      /*Colors.indigo[800],
                                Colors.indigo[700],
                                Colors.indigo[600],
                                Colors.indigo[500],*/
                      Colors.brown[800],
                      Colors.brown[700],
                      Colors.brown[600],
                      Colors.brown[500],
                      Colors.brown[400],
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 17,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      transport(dumb());
                    },
                    child: Text(
                      'Dumb Charades',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      /*Colors.indigo[800],
                                Colors.indigo[700],
                                Colors.indigo[600],
                                Colors.indigo[500],*/
                      Colors.cyan[800],
                      Colors.cyan[700],
                      Colors.cyan[600],
                      Colors.cyan[500],
                      Colors.cyan[400],
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 17,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      transport(musically());
                    },
                    child: Text(
                      'Musically',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      /*Colors.indigo[800],
                                Colors.indigo[700],
                                Colors.indigo[600],
                                Colors.indigo[500],*/
                      Colors.deepOrange[800],
                      Colors.deepOrange[700],
                      Colors.deepOrange[600],
                      Colors.deepOrange[500],
                      Colors.deepOrange[400],
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 17,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      transport(cookingWOFire());
                    },
                    child: Text(
                      'Cooking W/O Fire',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  transport(Widget n) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => n));
  }
}
