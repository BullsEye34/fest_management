import 'dart:ui';
import 'package:fest_management/confirmOff.dart';
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

import 'dart:convert';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class offstage extends StatefulWidget {
  @override
  _offstageState createState() => _offstageState();
}

class _offstageState extends State<offstage> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Off Stage"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/building.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
          child: ClipRRect(
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
                    "Off Stage ",
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
    ),),),);
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
          .document('Off Stage')
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
              transport(confirmOff(snapshot.data.documents[index]['title'], rules,
                  rate, snapshot.data.documents[index]['title']));
            },
            child: new Container(
              height: h,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.00),),
                color: Color(0xb3860CE8),
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

    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 5.0, sigmaX: 5.0),
        child: Card(
          color: Color(0xb3ffffff),
          elevation: 0,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
            ),
          ),
          child: Padding(padding: EdgeInsets.all(5.0),
            child: Wrap(
              children: <Widget>[
                Center(
                    child: Card(
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ,side: BorderSide(width: 1, color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Offstage Events",
                          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
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
                          elevation: 0,
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0))
                          ),
                          color: Colors.green,
                          child: Center(
                            child: Container(
                              width: w,
                              height: h,
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
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 17,
                        child: Card(
                          elevation: 0,
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0))
                          ),
                          color: Colors.blue,
                          child: Center(
                            child: Container(
                              width: w,
                              height: h,
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
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0))
                          ),
                          child: Center(
                            child: Container(
                              width: w,
                              height: h,
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
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),

                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 17,
                        child: Card(
                          elevation: 0,
                          color: Colors.purple,
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0))
                          ),
                          child: Center(
                            child: Container(
                              width: w,
                              height: h,
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
                          elevation: 0,
                          shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),)),
                          color: Colors.indigo,
                          child: Center(
                            child: Container(
                              width: w,
                              height: h,
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
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),

                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 17,
                        child: Card(
                          color: Colors.amber,
                          elevation: 0,
                          shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),)),


                          child: Center(
                            child: Container(
                              width: w,
                              height: h,
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
                          /* gradient: LinearGradient(
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
                            Colors.lime[800],
                            Colors.lime[700],
                            Colors.lime[600],
                            Colors.lime[500],
                            Colors.lime[400],
                          ],
                        ),*/
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 17,
                        child: Card(
                          color: Colors.lime,
                          elevation: 0,
                          shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),)),

                          child: Center(
                            child: Container(
                              width: w,
                              height: h,
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
                            Colors.brown[800],
                            Colors.brown[700],
                            Colors.brown[600],
                            Colors.brown[500],
                            Colors.brown[400],
                          ],
                        ),*/
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 17,
                        child: Card(
                          color: Colors.brown,
                          elevation: 0,
                          shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),)),
                          child: Center(
                            child: Container(
                              width: w,
                              height: h,
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
                          color: Colors.cyan,
                          elevation: 0,
                          shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),)),
                          child: Center(
                            child: Container(
                              width: w,
                              height: h,
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
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),

                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 17,
                        child: Card(
                          color: Colors.deepOrange,
                          elevation: 0,
                          shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),)),
                          child: Center(
                            child: Container(
                              width: w,
                              height: h,
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
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),),
        ),
      ),
    );
  }

  transport(Widget n) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => n));
  }
}
