import 'package:flutter/material.dart';
import 'dm.dart';

class singing extends StatefulWidget {
  @override
  _singingState createState() => _singingState();
}

class _singingState extends State<singing> {

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/events.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SafeArea(
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
    );
  }

}
