import 'package:fest_management/Getters/getDancing.dart';
import 'package:fest_management/Getters/getFashion.dart';
import 'package:fest_management/Getters/getFresh.dart';
import 'package:fest_management/Getters/getMad.dart';
import 'package:fest_management/Getters/getSinging.dart';
import 'package:fest_management/Getters/getStand.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainStageGetter extends StatefulWidget {
  @override
  _MainStageGetterState createState() => _MainStageGetterState();
}

class _MainStageGetterState extends State<MainStageGetter> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Main Stage Events"),
        centerTitle: true,
        backgroundColor: Color(0xff000000),
      ),
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/login.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Container(
                    child: Card(
                      color: Color(0xb3ffffff),
                      child: FlatButton(
                          onPressed: () {
                            transport(getSinging());
                          },
                          child: Text(
                            "Singing",
                            style: TextStyle(fontSize: 25.0),
                          )),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Card(
                    color: Color(0xb3ffffff),
                    child: FlatButton(
                      onPressed: () {
                        transport(getDancing());
                      },
                      child: Text(
                        "Dancing",
                        style: TextStyle(fontSize: 25.0),
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
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Card(
                    color: Color(0xb3ffffff),
                    child: FlatButton(
                        onPressed: () {
                          transport(getFresh());
                        },
                        child: Text(
                          "Mr. And Ms. Fresher",
                          style: TextStyle(fontSize: 25.0),
                        )),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Card(
                    color: Color(0xb3ffffff),
                    child: FlatButton(
                        onPressed: () {
                          transport(getStand());
                        },
                        child: Text(
                          "Stand Up",
                          style: TextStyle(fontSize: 25.0),
                        )),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Card(
                    color: Color(0xb3ffffff),
                    child: FlatButton(
                        onPressed: () {
                          transport(getMad());
                        },
                        child: Text(
                          "Mad Ads",
                          style: TextStyle(fontSize: 25.0),
                        )),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Card(
                    color: Color(0xb3ffffff),
                    child: FlatButton(
                        onPressed: () {
                          transport(getFashion());
                        },
                        child: Text(
                          "Fashion Show",
                          style: TextStyle(fontSize: 25.0),
                        )),
                  ),
                ),
              ],
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
