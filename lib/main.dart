import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'login.dart';
import 'events.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(primarySwatch: Colors.blue),
    //home: HomeScreen(),
    home: _Try(),
  ));
}

class _Try extends StatefulWidget {
  @override
  __TryState createState() => __TryState();
}

class __TryState extends State<_Try> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Text("Loading"),
          );
        } else {
          if (snapshot.hasData) {
            return events();
          } else {
            return login();
          }
        }
      },
    );
  }
}
