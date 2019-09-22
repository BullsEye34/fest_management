import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class page1 extends StatefulWidget {
  const page1({Key key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    some();

  }
  some() async{
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    QuerySnapshot qs = await Firestore.instance.collection("Main Stage").document("Singing").collection(user.email).getDocuments();
    print(qs.documents[0].data);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/login.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.05,
          height: MediaQuery.of(context).size.height / 1.05,
          child: Card(
            color: Color(0x99ffffff),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Center(
              child: ListView(children: <Widget>[
                ListTile(title: Text("Hi"),subtitle: Text("Yoo"),)
              ],)
            ),
          ),
        ),
      ),
    );
  }
}
