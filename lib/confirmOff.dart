import 'package:flutter/material.dart';

import 'RegisOff.dart';

class confirmOff extends StatefulWidget {

  var titles, rules, rates, every;
  confirmOff(var title, var rule, var rate, var ever) {
    titles = title;
    rules = rule;
    rates = rate;
    every = ever;
  }
  @override
  _confirmOffState createState() => _confirmOffState(titles, rules, rates, every);
}

class _confirmOffState extends State<confirmOff> {
  var titles, rules, rates, every;
  _confirmOffState(var title, var rule, var rate, var ever) {
    titles = title;
    rates = rate;
    rules = rule;
    every = ever;
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(titles),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        child: Container(
          height: 100.0,
        ),
      ),
      floatingActionButton: Container(
        height: 80.0,
        width: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      title: Text(
                        "New Registration for " + titles,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      elevation: 20.0,
                      actions: <Widget>[
                        FlatButton(
                          onPressed: () {
                            transport(regisOff(titles));
                          },
                          child: Text(
                            "I Confirm",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ],
                      // Retrieve the text the that user has entered by using the
                      // TextEditingController.
                      content:
                      Text("Confirm Registration for $titles ?")
                  );
                },
              );
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Rules for " + titles,
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
              ),
            ),
            line(),
            Text(
              rules,
              style: TextStyle(fontSize: 20.0),
            ),
            line(),
            Text(
              "\u20B9 " + rates,
              style: TextStyle(fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }


  Widget line() {
    return new Container(
        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
        child: Divider(
          color: Colors.black,
          height: 36,
        ));
  }

  transport(Widget n) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => n));
  }

}
