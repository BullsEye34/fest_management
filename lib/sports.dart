import 'package:fest_management/events/Carrom/Carrom.dart';
import 'package:fest_management/events/Chess/Chess.dart';
import 'package:fest_management/events/Cricket/Cricket.dart';
import 'package:fest_management/events/FootBall/FootBall.dart';
import 'package:fest_management/events/Kabbaddi/Kabbaddi.dart';
import 'package:fest_management/events/TableTennis/TableTennis.dart';
import 'package:flutter/material.dart';

class sports extends StatefulWidget {
  @override
  _sportsState createState() => _sportsState();
}

class _sportsState extends State<sports> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Center(
            child: Text(
          "Sports Events",
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
                      transport(FootBall());
                    },
                    child: Text(
                      'Football',
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
                      transport(Cricket());
                    },
                    child: Text(
                      'Cricket',
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
                      transport(Chess());
                    },
                    child: Text(
                      'Chess',
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
                      transport(TableTennis());
                    },
                    child: Text(
                      'Table Tennis',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              )
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
                      transport(Kabbaddi());
                    },
                    child: Text(
                      'Kabbaddi',
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
                      transport(Carrom());
                    },
                    child: Text(
                      'Carrom',
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
