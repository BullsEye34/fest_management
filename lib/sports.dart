import 'package:fest_management/confirmSport.dart';
import 'package:fest_management/events/Carrom/Carrom.dart';
import 'package:fest_management/events/Chess/Chess.dart';
import 'package:fest_management/events/Cricket/Cricket.dart';
import 'package:fest_management/events/FootBall/FootBall.dart';
import 'package:fest_management/events/Kabbaddi/Kabbaddi.dart';
import 'package:fest_management/events/TableTennis/TableTennis.dart';
import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class sports extends StatefulWidget {
  @override
  _sportsState createState() => _sportsState();
}

class _sportsState extends State<sports> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Sports"),
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
                    "Sports",
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
          .document('Sports')
          .collection('names')
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        /*if (!snapshot.hasData) {
          return Center(child: const Text('Loading events...'));
        }*/
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Text('Press button to start.');
          case ConnectionState.waiting:
            return Container(child: CircularProgressIndicator(
              strokeWidth: 20.0,
            ), width: 10.0, height: 500.0,
              padding: EdgeInsets.all(100.0),);
            break;

          case ConnectionState.done:

          case ConnectionState.active:

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
                transport(confirmSport(snapshot.data.documents[index]['title'], rules,
                    rate, snapshot.data.documents[index]['title']));
              },
              child: new Container(
                height: h,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.00),),
                  color: Color(0xb323D432),
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
              transport(confirmSport(snapshot.data.documents[index]['title'], rules,
                  rate, snapshot.data.documents[index]['title']));
            },
            child: new Container(
              height: h,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.00),),
                color: Color(0xb323D432),
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
}
