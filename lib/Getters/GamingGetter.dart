import 'package:fest_management/Getters/Gaming/getCS.dart';
import 'package:fest_management/Getters/Gaming/getMini.dart';
import 'package:fest_management/Getters/Gaming/getNFS.dart';
import 'package:fest_management/Getters/Gaming/getPUBG.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamingGetter extends StatefulWidget {
  @override
  _GamingGetterState createState() => _GamingGetterState();
}

class _GamingGetterState extends State<GamingGetter> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Gaming Events"),
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
                            transport(getPUBG());
                          },
                          child: Text(
                            "PUBG Mobile",
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
                        transport(getNFS());
                      },
                      child: Text(
                        "NFS Most Wanted",
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
                          transport(getCS());
                        },
                        child: Text(
                          "Counter Strike 1.6",
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
                          transport(getMini());
                        },
                        child: Text(
                          "Mini Militia",
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
