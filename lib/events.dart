import 'package:fest_management/page0.dart';
import 'package:fest_management/sports.dart';
import 'package:fest_management/technical.dart';
import 'package:flutter/material.dart';

import 'gaming.dart';
import 'mainstage.dart';
import 'offstage.dart';
import 'page1.dart';

class events extends StatefulWidget {
  @override
  _eventsState createState() => _eventsState();
}

class _eventsState extends State<events> {

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
    onTap: (int index) => setState(() => _selectedIndex = index),
    currentIndex: selectedIndex,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.black,
        ),
        title: Text(
          "Events",
          style: TextStyle(color: Colors.black),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        title: Text(
          "History",
          style: TextStyle(color: Colors.black),
        ),
      ),

    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),

      appBar: AppBar(
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
