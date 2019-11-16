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
  bool isLoading=true;
  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fest Management'),
        centerTitle: true,
        backgroundColor: Colors.black,
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
            width: MediaQuery
                .of(context)
                .size
                .width / 1.2,
            height: MediaQuery
                .of(context)
                .size
                .height / 2.5,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0),),),
              child: Form(
                key: _formKey,
                autovalidate: true,
                child: Center(
                  child: Wrap(
                    children: <Widget>[
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width/1.5,
                                height: MediaQuery.of(context).size.height/17,
                                child: Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0),), side: BorderSide(width: 2.0, color: Colors.blue)),
                                  color: Colors.white,
                                  elevation: 0,
                                  child: Center(child: Text("Fest Management Login", style: TextStyle(letterSpacing: 3, fontWeight: FontWeight.bold),)),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width / 1.5,
                                child: Container(
                                  child: TextFormField(
                                    validator: validateEmail,
                                      controller: uname,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.face),
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
                                        labelText: 'Username (Mail ID)',
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width / 1.5,
                                child: TextFormField(
                                    controller: pwd,
                                    obscureText: true,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter your Password';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock),
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
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
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width / 3,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: FlatButton(
                                  color: Colors.orange,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
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
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width / 3,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: OutlineButton(
                                  onPressed: () {
                                    uname.clear();
                                    pwd.clear();
                                  },
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
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
      ),
    );
  }

  submite() async {

    FirebaseUser user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: uname.text, password: pwd.text)
        .then((FirebaseUser user) {
      isLoading = false;
      print("Logged In Successfully");
      print('****************************************************************');
      _navigateToNextScreen(context, events());
    })

        .catchError((e) {
      isLoading = false;
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
