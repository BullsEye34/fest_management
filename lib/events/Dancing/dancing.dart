import 'package:flutter/material.dart';
import 'dm.dart';

class dancing extends StatefulWidget {
  @override
  _dancingState createState() => _dancingState();
}

class _dancingState extends State<dancing> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Singing"), toolbarOpacity: 1, backgroundColor: Color(0xff000000), centerTitle: true,),
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/events.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.05,
                height: MediaQuery.of(context).size.height / 1.05,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
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
      ),
    );
  }

}
