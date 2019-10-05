import 'dart:ui';

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
    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Card(
          elevation: 0,
          color: Color(0xbfffffff),
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0), side: BorderSide(width: 2.0, color: Colors.grey.withOpacity(0.8))),
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
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
                      side: BorderSide(width: 2, color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Main Stage Events",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
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
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0)),
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
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0)),
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
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0)),
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
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0)),
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
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0)),
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
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0)),
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

  transport(Widget n) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => n));
  }
}
