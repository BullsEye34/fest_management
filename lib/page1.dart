import 'dart:ui';

import 'package:fest_management/Getters/MainStageGetter.dart';
import 'package:fest_management/Getters/OffStageGetter.dart';
import 'package:fest_management/Getters/SportsGetter.dart';
import 'package:fest_management/Getters/TechnicalGetter.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'mainstage.dart';
import 'offstage.dart';
import 'gaming.dart';
import 'technical.dart';
import 'sports.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:convert';

import 'Getters/GamingGetter.dart';
import 'Getters/MainStage/getSinging.dart';

class page1 extends StatefulWidget {
  const page1({Key key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {


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
                                  .collection('req')
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
                                    for(int i = 0 ; i< snapshot.data.documents.length; i++){
                                      print(i);
                                      print(snapshot.data.documents[i].documentID);
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
  }Widget bak(){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/login.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.05,
          height: MediaQuery.of(context).size.height / 1.05,
          child: Card(
            color: Color(0x39ffffff),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: Card(
                            color: Color(0xff3ddc84),
                            child: Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height,
                                child: FlatButton(
                                  onPressed: () {
                                    transport(MainStageGetter());
                                  },
                                  child: Text(
                                    "Mainstage",
                                    style: TextStyle(fontSize: 35.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height / 5,
                              width: MediaQuery.of(context).size.width / 2.16,
                              child: Card(
                                color: Color(0xfff25c05),
                                child: Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height,
                                      child: FlatButton(
                                          onPressed: () {
                                            transport(OffStageGetter());
                                          },
                                          child: Text(
                                            "Off Stage",
                                            style: TextStyle(fontSize: 35.0),
                                          )),
                                    )),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 5,
                              width: MediaQuery.of(context).size.width / 2.16,
                              child: Card(
                                color: Color(0xff004bfa),
                                child: Center(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    child: FlatButton(
                                      onPressed: () {
                                        transport(TechnicalGetter());
                                      },
                                      child: Text(
                                        "Technical",
                                        style: TextStyle(fontSize: 35.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height / 5,
                              width: MediaQuery.of(context).size.width / 2.16,
                              child: Card(
                                color: Color(0xff8527b7),
                                child: Center(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    child: FlatButton(
                                      onPressed: () {
                                        transport(SportsGetter());
                                      },
                                      child: Text(
                                        "Sports",
                                        style: TextStyle(fontSize: 35.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 5,
                              width: MediaQuery.of(context).size.width / 2.16,
                              child: Card(
                                color: Color(0xffffdf00),
                                child: Center(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    child: FlatButton(
                                      onPressed: () {
                                        transport(GamingGetter());
                                      },
                                      child: Text(
                                        "Gaming",
                                        style: TextStyle(fontSize: 35.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
