import 'package:fest_management/confirmGame.dart';
import 'package:fest_management/events/CS/CS.dart';
import 'package:fest_management/events/Mini/Mini.dart';
import 'package:fest_management/events/NFS/NFS.dart';
import 'package:fest_management/events/PUBG/PUBG.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class gaming extends StatefulWidget {
  @override
  _gamingState createState() => _gamingState();
}

class _gamingState extends State<gaming> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        width: w / 1.1,
        child: Card(
          color: Color(0xcfffffff),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Wrap(
              children: <Widget>[
                Center(
                  child: Text(
                    "Gaming",
                    style:
                    TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
                new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
                ste(),
              ],
            ),
          ),
        ),
      ),
    );


  }

  transport(Widget n) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => n));
  }

  Widget ste() {
    const Base64Codec base64 = Base64Codec();
    var rules;
    var rate;
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return new StreamBuilder(
      stream: Firestore.instance
          .collection('list')
          .document('Gaming')
          .collection('names')
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return Center(child: const Text('Loading events...'));
        }
        return new StaggeredGridView.countBuilder(

          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          itemCount: snapshot.data.documents.length,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: (){
              rate = snapshot.data.documents[index]['rate'];
              rules = utf8.decode(
                  base64.decode(snapshot.data.documents[index]['rules']));
              transport(confirmGame(snapshot.data.documents[index]['title'], rules,
                  rate, snapshot.data.documents[index]['title']));
            },
            child: new Container(
              height: h,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.00),),
                color: Color(0xb3040DBF),
                child: new Center(
                  child: new Text(
                    snapshot.data.documents[index]['title'],
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          staggeredTileBuilder: (int index) => new StaggeredTile.count(1, 0.4),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        );
      },
    );
  }

  Widget backup(){
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
}
