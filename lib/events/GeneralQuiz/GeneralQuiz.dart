import 'package:flutter/material.dart';
import 'dm.dart';

class GeneralQuiz extends StatefulWidget {
  @override
  _GeneralQuizState createState() => _GeneralQuizState();
}

class _GeneralQuizState extends State<GeneralQuiz> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GeneralQuiz"), toolbarOpacity: 1, backgroundColor: Color(0xff000000), centerTitle: true,),
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
                  color: Color(0x99ffffff),
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
