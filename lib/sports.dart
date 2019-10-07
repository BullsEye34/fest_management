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
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Card(
      color: Color(0xb3ffffff),
      elevation: 0,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          children: <Widget>[
            Center(
                child: Card(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(width: 1, color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
              "Sports Events",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),

                    ),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 17,
                    child: Card(
                      color: Colors.green,
                      elevation: 0,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),),
                      child: Center(
                        child: Container(
                          width: w,
                          height: h,
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
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),

                    ),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 17,
                    child: Card(
                      color: Colors.blue,
                      elevation: 0,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),),
                      child: Center(
                        child: Container(
                          width: w,
                          height: h,
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

                    ),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 17,
                    child: Card(
                      color: Colors.red,
                      elevation: 0,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),),
                      child: Center(
                        child: Container(
                          width: w,
                          height: h,
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
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),

                    ),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 17,
                    child: Card(
                      color: Colors.purple,
                      elevation: 0,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),),
                      child: Center(
                        child: Container(
                          width: w,
                          height: h,
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

                    ),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 17,
                    child: Card(
                      color: Colors.indigo,
                      elevation: 0,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),),
                      child: Center(
                        child: Container(
                          width: w,
                          height:h,
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
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                      /*gradient: LinearGradient(
                        // Where the linear gradient begins and ends
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        // Add one stop for each color. Stops should increase from 0 to 1
                        stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                        colors: [
                          // Colors are easy thanks to Flutter's Colors class.
                          *//*Colors.indigo[800],
                                    Colors.indigo[700],
                                    Colors.indigo[600],
                                    Colors.indigo[500],*//*
                          Colors.amber[800],
                          Colors.amber[700],
                          Colors.amber[600],
                          Colors.amber[500],
                          Colors.amber[400],
                        ],
                      ),*/
                    ),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 17,
                    child: Card(
                      color: Colors.amber,
                      elevation: 0,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),),
                      child: Center(
                        child: Container(
                          width: w,
                          height: h,
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
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  transport(Widget n) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => n));
  }
}
