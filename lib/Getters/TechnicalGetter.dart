import 'package:fest_management/Getters/Technical/getCodeIt.dart';
import 'package:fest_management/Getters/Technical/getGeneral.dart';
import 'package:fest_management/Getters/Technical/getTechnicalQuiz.dart';
import 'package:fest_management/Getters/OffStage/getHogathon.dart';
import 'package:fest_management/Getters/OffStage/getTreasureHunt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TechnicalGetter extends StatefulWidget {
  @override
  _TechnicalGetterState createState() => _TechnicalGetterState();
}

class _TechnicalGetterState extends State<TechnicalGetter> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Technical Events"),
        centerTitle: true,
        backgroundColor: Color(0xff000000),
      ),
      body: new Container(
        height: MediaQuery.of(context).size.height,
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
                            transport(gettechnicalDebate());
                          },
                          child: Text(
                            "Technical Debate",
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
                        transport(getCodeIt());
                      },
                      child: Text(
                        "Code It",
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
                  width: MediaQuery.of(context).size.width /1.05,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Card(
                    color: Color(0xb3ffffff),
                    child: FlatButton(
                        onPressed: () {
                          transport(getGeneralQuiz());
                        },
                        child: Text(
                          "General Technical Quiz",
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
