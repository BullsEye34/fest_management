import 'package:fest_management/login.dart';
import 'package:fest_management/page0.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'page1.dart';

class events extends StatefulWidget {
  @override
  _eventsState createState() => _eventsState();
}

class _eventsState extends State<events> {
  var uname = new TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("********************************");
    gete();
  }

  gete() async {
    var user = await FirebaseAuth.instance.currentUser();
    print(user.email);

    if (user.displayName == "" || user.displayName==null) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            // Retrieve the text the that user has entered by using the
            // TextEditingController.
            content: TextField(
              controller: uname,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your Name Please',
              ),
            ),
            actions: <Widget>[
              OutlineButton(onPressed: (){
                UserUpdateInfo userInfo = new UserUpdateInfo();
                userInfo.displayName= uname.text;
                user.updateProfile(userInfo);
                Navigator.pop(context);
              },
                child: Text("Submit"),
              ),
            ],
          );
        },
      );
    }

    print("********************************" + user.displayName);
  }

  final controller = PageController(initialPage: 0);

  final PageStorageBucket bucket = PageStorageBucket();
  final List<Widget> pages = [
    page0(
      key: PageStorageKey('Page1'),
    ),
    page1(
      key: PageStorageKey('Page2'),
    ),
  ];

  int _selectedIndex = 0;

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
        backgroundColor: Colors.black,
        onTap: (int index) => setState(() => _selectedIndex = index),
        currentIndex: selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              "Events",
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            title: Text(
              "History",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      appBar: AppBar(
        actions: <Widget>[
          FlatButton(child: Icon(Icons.exit_to_app, color: Colors.white,), onPressed: (){
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  actions: <Widget>[
                    FlatButton(onPressed: (){
                      FirebaseAuth.instance.signOut();
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login()));
                    }, child: Text("Log Out"))
                  ],
                  title: Text("Log Out"),
                  // Retrieve the text the that user has entered by using the
                  // TextEditingController.
                  content: Text("Do You Really Want to Log Out?"),
                );
              },
            );
          }, textColor: Colors.white, ),
        ],
        backgroundColor: Color(0xff000000),
        title: Text("Fest Management"),
        centerTitle: true,
      ),
      body: PageStorage(
        child: pages[_selectedIndex],
        bucket: bucket,
      ),
    );
  }
}
