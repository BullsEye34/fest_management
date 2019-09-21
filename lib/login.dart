import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'events.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final pwd = TextEditingController();
  final uname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fest Management'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/login.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 2,
            child: Card(
              child: Center(
                child: Wrap(
                  children: <Widget>[
                    Center(
                      child: Wrap(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: TextField(
                                  controller: uname,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Username',
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: TextField(
                                  controller: pwd,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Password',
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Wrap(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: OutlineButton(
                                onPressed:
                                    /*(){
                              return showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    // Retrieve the text the that user has entered by using the
                                    // TextEditingController.
                                    content: Text("Username : " + uname.text + "\nPassword : " + pwd.text),
                                  );
                                },
                              );
                            }*/
                                    submite,
                                child: Text("Submit"),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: OutlineButton(
                                onPressed: () {},
                                child: Text("Clear"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  submite() async {
    FirebaseUser user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: uname.text, password: pwd.text)
        .then((FirebaseUser user) {
      print(user.uid);
      print('****************************************************************');
      _navigateToNextScreen(context, events());
    }).catchError((e) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            // Retrieve the text the that user has entered by using the
            // TextEditingController.
            content: Text(e.toString()),
          );
        },
      );
    });
  }

  void _navigateToNextScreen(BuildContext context, Widget n) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => n),
    );
  }
}
