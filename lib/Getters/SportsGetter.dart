import 'package:fest_management/Getters/Sports/getCarrom.dart';
import 'package:fest_management/Getters/Sports/getChess.dart';
import 'package:fest_management/Getters/Sports/getCricket.dart';
import 'package:fest_management/Getters/Sports/getFootBall.dart';
import 'package:fest_management/Getters/Sports/getKabbaddi.dart';
import 'package:fest_management/Getters/Sports/getTableTennis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SportsGetter extends StatefulWidget {
  @override
  _SportsGetterState createState() => _SportsGetterState();
}

class _SportsGetterState extends State<SportsGetter> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sports Events"),
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
                            transport(getFootBall());
                          },
                          child: Text(
                            "FootBall",
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
                        transport(getCricket());
                      },
                      child: Text(
                        "Cricket",
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
                          transport(getChess());
                        },
                        child: Text(
                          "Chess",
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
                          transport(getTableTennis());
                        },
                        child: Text(
                          "Table Tennis",
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
                          transport(getKabbaddi());
                        },
                        child: Text(
                          "Kabbaddi",
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
                          transport(getCarrom());
                        },
                        child: Text(
                          "Carrom",
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
