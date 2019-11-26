import 'package:fest_management/sports.dart';
import 'package:fest_management/technical.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';

import 'gaming.dart';
import 'mainstage.dart';
import 'offstage.dart';
import 'dart:ui';

class page0 extends StatefulWidget {
  const page0({Key key}) : super(key: key);

  @override
  _page0State createState() => _page0State();
}

class _page0State extends State<page0> {

  transport(Widget n) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => n));
  }
  var ms = mainstage(), os, gam, spo, tec;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Widget os() => offstage();
    Widget gam() => gaming();
    Widget spo() => sports();
    Widget tec() => technical();
  }

  @override
  Widget build(BuildContext context) {

    const Base64Codec base64 = Base64Codec();
    var rules;
    var rate;
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/logine.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.05,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 0,
                color: Color(0x00000000),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: Center(
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.4,
                          height: MediaQuery.of(context).size.height / 12,
                          child: Card(
                            color: Color(0xf3ffffff),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                            elevation: 0,
                            child: Center(
                              child: Text(
                                "List Of Events",
                                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          elevation: 0,
                          color: Color(0xf3ffffff),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: StreamBuilder(
                              stream: Firestore.instance
                                  .collection('list')
                                  .snapshots(),
                              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                                /*if (!snapshot.hasData) {
                                  //return Center(child: const Text('Loading events...'));
                                  return Center(child: CircularProgressIndicator());
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
                                            /*rate = snapshot.data.documents[index]['rate'];
                                      rules = utf8.decode(
                                          base64.decode(snapshot.data.documents[index]['rules']));*/
                                            switch(snapshot.data.documents[index].documentID){
                                              case 'Main Stage': transport(mainstage()); break;
                                              case 'Off Stage': transport(offstage()); break;
                                              case 'Technical': transport(technical()); break;
                                              case 'Gaming': transport(gaming()); break;
                                              case 'Sports': transport(sports()); break;
                                            }
                                          },
                                          child: new Container(
                                            height: h,
                                            child: Card(
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.00),),
                                              color: Color(0xbf21038C),
                                              child: new Center(
                                                child: new Text(
                                                  snapshot.data.documents[index].documentID.toString(),
                                                  style: TextStyle(fontSize: 30.0, color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        staggeredTileBuilder: (int index) => new StaggeredTile.count(1, (index.isEven)? 1:1.5),
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
                                      /*rate = snapshot.data.documents[index]['rate'];
                                      rules = utf8.decode(
                                          base64.decode(snapshot.data.documents[index]['rules']));*/
                                      switch(snapshot.data.documents[index].documentID){
                                        case 'Main Stage': transport(mainstage()); break;
                                        case 'Off Stage': transport(offstage()); break;
                                        case 'Technical': transport(technical()); break;
                                        case 'Gaming': transport(gaming()); break;
                                        case 'Sports': transport(sports()); break;
                                      }
                                    },
                                    child: new Container(
                                      height: h,
                                      child: Card(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.00),),
                                        color: Color(0xbf21038C),
                                        child: new Center(
                                          child: new Text(
                                            snapshot.data.documents[index].documentID.toString(),
                                            style: TextStyle(fontSize: 30.0, color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  staggeredTileBuilder: (int index) => new StaggeredTile.count(1, (index.isEven)? 1:1.5),
                                  mainAxisSpacing: 4.0,
                                  crossAxisSpacing: 4.0,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
/*
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: mainstage(),
                        //child: ms,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: offstage(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: technical(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: gaming(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: sports(),
                      ),*/
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

  bak() {
    SingleChildScrollView(
      child: Wrap(
        runAlignment: WrapAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: mainstage(),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: offstage(),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: technical(),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: gaming(),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: sports(),
          ),
        ],
      ),
    );
  }
}
