import 'package:fest_management/events/CS/CS.dart';
import 'package:fest_management/events/Mini/Mini.dart';
import 'package:fest_management/events/NFS/NFS.dart';
import 'package:fest_management/events/PUBG/PUBG.dart';
import 'package:flutter/material.dart';

class gaming extends StatefulWidget {
  @override
  _gamingState createState() => _gamingState();
}

class _gamingState extends State<gaming> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Card(
      color: Color(0xb3ffffff),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),),),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          children: <Widget>[
            Center(
                child: Card(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0), side: BorderSide(width: 1, color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
              "Gaming Events",
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
                              transport(PUBG());
                            },
                            child: Text(
                              'PUBG Mobile',
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
                              transport(NFS());
                            },
                            child: Text(
                              'NFS Most Wanted',
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
                              transport(CS());
                            },
                            child: Text(
                              'Counter Strike 1.6',
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
                      color: Colors.purple,
                      elevation: 0,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),),
                      child: Center(
                        child: Container(
                          width: w,
                          height: h,
                          child: FlatButton(
                            onPressed: () {
                              transport(Mini());
                            },
                            child: Text(
                              'Mini Militia',
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
          ],
        ),
      ),
    );
  }
  transport(Widget n) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => n));
  }
}
