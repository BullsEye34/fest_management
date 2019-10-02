import 'package:flutter/material.dart';

import 'events/FashionShow/fs.dart';
import 'events/MadAds/ma.dart';
import 'events/Mr.Mrs.Fresher/mmf.dart';
import 'events/Singing/singing.dart';
import 'events/StandUp/su.dart';
import 'events/Dancing/dancing.dart';

class mainstage extends StatefulWidget {
  @override
  _mainstageState createState() => _mainstageState();
}

class _mainstageState extends State<mainstage> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Card(
      elevation: 0,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0), side: BorderSide(width: 2.0, color: Colors.grey.withOpacity(0.8))),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Wrap(
          children: <Widget>[
            Center(
                child: Text(
                  "Main Stage Events",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
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
                        Colors.green[800],
                        Colors.green[700],
                        Colors.green[600],
                        Colors.green[500],
                        Colors.green[400],
                      ],
                    ),*/
                    ),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 17,
                    child: Card(
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0)),),
                      color: Colors.green,
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0))
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: FlatButton(
                            onPressed: () {
                              transport(singing());
                            },
                            child: Text(
                              'Singing',
                              style: TextStyle(color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
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
                        Colors.blue[800],
                        Colors.blue[700],
                        Colors.blue[600],
                        Colors.blue[500],
                        Colors.blue[400],
                      ],
                    ),*/
                    ),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 17,
                    child: Card(
                      color: Colors.blue,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0)),),
                      child: Center(
                        child: Container(
                          width: w,
                          height: h,
                          child: FlatButton(
                            onPressed: () {
                              transport(dancing());
                            },
                            child: Text(
                              'Dancing',
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
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
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
                        Colors.red[800],
                        Colors.red[700],
                        Colors.red[600],
                        Colors.red[500],
                        Colors.red[400],
                      ],
                    ),*/
                    ),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 17,
                    child: Card(
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0)),),
                      color: Colors.red,
                      child: Center(
                        child: Container(
                          width: w,
                          height: h,
                          child: FlatButton(
                            onPressed: () {
                              transport(mmf());
                            },
                            child: Text(
                              'Mr. and Ms. Fresher',
                              style: TextStyle(color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
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
                        Colors.purple[800],
                        Colors.purple[700],
                        Colors.purple[600],
                        Colors.purple[500],
                        Colors.purple[400],
                      ],
                    ),*/
                    ),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 17,
                    child: Card(
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0)),),
                      color: Colors.purple,
                      child: Center(
                        child: Container(
                          width: w,
                          height: h,
                          child: FlatButton(
                            onPressed: () {
                              transport(fs());
                            },
                            child: Text(
                              'Fashion Show',
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
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
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
                        Colors.indigo[800],
                        Colors.indigo[700],
                        Colors.indigo[600],
                        Colors.indigo[500],
                        Colors.indigo[400],
                      ],
                    ),*/
                    ),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 17,
                    child: Card(
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0)),),
                      color: Colors.indigo,
                      child: Center(
                        child: Container(
                          width: w,
                          height: h,
                          child: FlatButton(
                            onPressed: () {
                              transport(ma());
                            },
                            child: Text(
                              'Mad Ads',
                              style: TextStyle(color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
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
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0)),),
                      color: Colors.amber,
                      child: Center(
                        child: Container(
                          width: w,
                          height: h,
                          child: FlatButton(
                            onPressed: () {
                              transport(su());
                            },
                            child: Text(
                              'Stand Up Comedy',
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
