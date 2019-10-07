import 'package:flutter/material.dart';
import 'dm.dart';

class su extends StatefulWidget {
  @override
  _suState createState() => _suState();
}

class _suState extends State<su> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stand Up Comedy"), toolbarOpacity: 1, backgroundColor: Color(0xff000000), centerTitle: true,),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/events.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 1,
              height: MediaQuery.of(context).size.height / 1,
              child: Card(
                color: Color(0xffffffff),
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),)),
                child: Flex(direction: Axis.vertical, children: <Widget>[Expanded(
                  child: new CustomScrollView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: false,
                    slivers: <Widget>[
                      new SliverPadding(
                        padding: const EdgeInsets.symmetric(vertical: 0.0),
                        sliver: new SliverList(
                          delegate: new SliverChildBuilderDelegate(
                                (context, index) => new dm(),
                            childCount: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                )],),
              ),
            ),
          ),
        ),
      ),
    );
  }

}