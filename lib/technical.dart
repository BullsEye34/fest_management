import 'dart:ui';

import 'package:fest_management/confirmTech.dart';
import 'package:fest_management/events/CodeIt/CodeIt.dart';
import 'package:fest_management/events/GeneralQuiz/GeneralQuiz.dart';
import 'package:fest_management/events/TechnicalQuiz/technicalDebate.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';

class technical extends StatefulWidget {
  @override
  _technicalState createState() => _technicalState();
}

class _technicalState extends State<technical> {
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
                    "Technical",
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
  Widget ste() {
    const Base64Codec base64 = Base64Codec();
    var rules;
    var rate;
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return new StreamBuilder(
      stream: Firestore.instance
          .collection('list')
          .document('Technical')
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
              transport(confirmTech(snapshot.data.documents[index]['title'], rules,
                  rate, snapshot.data.documents[index]['title']));
            },
            child: new Container(
              height: h,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.00),),
                color: Color(0xb3BE1500),
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

  transport(Widget n) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => n));
  }

  Widget Backup(){
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: BorderRadius.circular(0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Card(
          elevation: 0,
          color: Color(0xb3ffffff),
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),),),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              children: <Widget>[
                Center(
                    child: Card(
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),side: BorderSide(width: 1, color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                  "Technical Events",
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
                          shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),),
                          elevation: 0,
                          color: Colors.green,
                          child: Center(
                            child: Container(
                              width: w,
                              height: h,
                              child: FlatButton(
                                onPressed: () {
                                  transport(technicalDebate());
                                },
                                child: Text(
                                  'Technical Debate',
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
                          shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),),
                          color: Colors.blue,
                          elevation: 0,
                          child: Center(
                            child: Container(
                              width: w,
                              height: h,
                              child: FlatButton(
                                onPressed: () {
                                  transport(CodeIt());
                                },
                                child: Text(
                                  'Code It',
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
                          borderRadius: BorderRadius.circular(100),
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
                          shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),),
                          color: Colors.red,
                          elevation: 0,
                          child: Center(
                            child: Container(
                              width: w,
                              height: h,
                              child: FlatButton(
                                onPressed: () {
                                  transport(GeneralQuiz());
                                },
                                child: Text(
                                  'General Technical Quiz',
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
        ),
      ),
    );
  }
}
