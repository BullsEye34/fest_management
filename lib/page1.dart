import 'dart:ui';

import 'package:fest_management/Getters/MainStageGetter.dart';
import 'package:fest_management/Getters/OffStageGetter.dart';
import 'package:fest_management/Getters/SportsGetter.dart';
import 'package:fest_management/Getters/TechnicalGetter.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Getters/GamingGetter.dart';
import 'Getters/MainStage/getSinging.dart';

class page1 extends StatefulWidget {
  const page1({Key key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  @override
  Widget build(BuildContext context) {
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
  transport(Widget n) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => n));
  }
}
