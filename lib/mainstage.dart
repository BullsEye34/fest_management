import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

import 'events/FashionShow/fs.dart';
import 'events/MadAds/ma.dart';
import 'events/Mr.Mrs.Fresher/mmf.dart';
import 'events/Singing/singing.dart';
import 'events/StandUp/su.dart';
import 'events/Dancing/dancing.dart';
import 'package:random_color/random_color.dart';
import 'confirmMain.dart';
import 'dart:convert';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class mainstage extends StatefulWidget {
  @override
  _mainstageState createState() => _mainstageState();
}

class _mainstageState extends State<mainstage> {
  @override
  Widget build(BuildContext context) {
    RandomColor _randomColor = RandomColor();
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Main Stage"),
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
              width: w / 1.05,
              child: Card(
                color: Color(0xf3ffffff),
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Wrap(
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Main Stage",
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
          .document('Main Stage')
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
              transport(test1(snapshot.data.documents[index]['title'], rules,
                  rate, snapshot.data.documents[index]['title']));
            },
            child: new Container(
              height: h,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.00),),
                color: Color(0xb3F28705),
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

  Widget streamer() {
    const Base64Codec base64 = Base64Codec();
    var rules;
    var rate;
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return StreamBuilder(
      stream: Firestore.instance
          .collection('list')
          .document('Main Stage')
          .collection('names')
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return Center(child: const Text('Loading events...'));
        }
        return new GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: snapshot.data.documents.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              //crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
              crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                rate = snapshot.data.documents[index]['rate'];
                rules = utf8.decode(
                    base64.decode(snapshot.data.documents[index]['rules']));
                transport(test1(snapshot.data.documents[index]['title'], rules,
                    rate, snapshot.data.documents[index]['title']));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  padding: EdgeInsets.only(top: 30.0),
                  height: h / 100,
                  width: w,
                  child: new Card(
                      elevation: 0,
                      color: Color(0xb3F28705),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child:
                          new /*GridTile(
        footer: new Text(snapshot.data.documents[index]['name']),
        child: new Text(snapshot.data.documents[index]['image']), //just for testing, will fill with image later
        )*/
                          Center(
                        child: Text(
                          snapshot.data.documents[index]['title'],
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      )),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget someBackup() {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Card(
          elevation: 0,
          color: Color(0xb3ffffff),
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0), side: BorderSide(width: 2.0, color: Colors.grey.withOpacity(0.8))),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Wrap(
              children: <Widget>[
                Center(
                    child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(width: 1, color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Main Stage Events",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
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
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 17,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          color: Colors.green,
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0))),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              child: FlatButton(
                                onPressed: () {
                                  transport(singing());
                                },
                                child: Text(
                                  'Singing',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0),
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
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 17,
                        child: Card(
                          elevation: 0,
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0),
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
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 17,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0),
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
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 17,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0),
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
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 17,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0),
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
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 17,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0),
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
