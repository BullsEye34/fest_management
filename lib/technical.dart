import 'package:fest_management/events/CodeIt/CodeIt.dart';
import 'package:fest_management/events/GeneralQuiz/GeneralQuiz.dart';
import 'package:fest_management/events/TechnicalQuiz/technicalDebate.dart';
import 'package:flutter/material.dart';

class technical extends StatefulWidget {
  @override
  _technicalState createState() => _technicalState();
}

class _technicalState extends State<technical> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Center(
            child: Text(
          "Technical Events",
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      /*Colors.indigo[800],
                                Colors.indigo[700],
                                Colors.indigo[600],
                                Colors.indigo[500],*/
                      Colors.green[800],
                      Colors.green[700],
                      Colors.green[600],
                      Colors.green[500],
                      Colors.green[400],
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 17,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      transport(technicalDebate());
                    },
                    child: Text(
                      'Technical Debate',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      /*Colors.indigo[800],
                                Colors.indigo[700],
                                Colors.indigo[600],
                                Colors.indigo[500],*/
                      Colors.blue[800],
                      Colors.blue[700],
                      Colors.blue[600],
                      Colors.blue[500],
                      Colors.blue[400],
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 17,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      transport(CodeIt());
                    },
                    child: Text(
                      'Code It',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
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
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      /*Colors.indigo[800],
                                Colors.indigo[700],
                                Colors.indigo[600],
                                Colors.indigo[500],*/
                      Colors.red[800],
                      Colors.red[700],
                      Colors.red[600],
                      Colors.red[500],
                      Colors.red[400],
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 17,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      transport(GeneralQuiz());
                    },
                    child: Text(
                      'General Technical Quiz',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  transport(Widget n) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => n));
  }
}
