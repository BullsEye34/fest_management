
import 'package:fest_management/Getters/OffStage/getBegBorrowSteal.dart';
import 'package:fest_management/Getters/OffStage/getCooking.dart';
import 'package:fest_management/Getters/OffStage/getDumb.dart';
import 'package:fest_management/Getters/OffStage/getHogathon.dart';
import 'package:fest_management/Getters/OffStage/getMusical.dart';
import 'package:fest_management/Getters/OffStage/getPhotography.dart';
import 'package:fest_management/Getters/OffStage/getPoetry.dart';
import 'package:fest_management/Getters/OffStage/getRangoli.dart';
import 'package:fest_management/Getters/OffStage/getSkecthing.dart';
import 'package:fest_management/Getters/OffStage/getTreasureHunt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OffStageGetter extends StatefulWidget {
  @override
  _OffStageGetterState createState() => _OffStageGetterState();
}

class _OffStageGetterState extends State<OffStageGetter> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Off Stage Events"),
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
        child: new SingleChildScrollView(child: Column(
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
                            transport(getTreasureHunt());
                          },
                          child: Text(
                            "Treasure Hunt",
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
                        transport(getHogathon());
                      },
                      child: Text(
                        "Hogathon",
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
                          transport(getBegBorrowSteal());
                        },
                        child: Text(
                          "Beg Borrow Steal",
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
                          transport(getSketching());
                        },
                        child: Text(
                          "Sketching",
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
                          transport(getRangoli());
                        },
                        child: Text(
                          "Rangoli",
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
                          transport(getPoetry());
                        },
                        child: Text(
                          "Poetry",
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
                          transport(getPhotography());
                        },
                        child: Text(
                          "Photography",
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
                          transport(getDumb());
                        },
                        child: Text(
                          "Dumb Charades",
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
                          transport(getMusical());
                        },
                        child: Text(
                          "Musically",
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
                          transport(getCooking());
                        },
                        child: Text(
                          "Cooking W/O Fire",
                          style: TextStyle(fontSize: 25.0),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),),
      ),
    );
  }
  transport(Widget n) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => n));
  }
}
