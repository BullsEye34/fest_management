import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class getMini extends StatefulWidget {
  @override
  _getMiniState createState() => _getMiniState();
}

class _getMiniState extends State<getMini> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mini Militia History"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: new Padding(
        padding: const EdgeInsets.all(8.0),
        child: StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance
              .collection('Events')
              .document("Gaming")
              .collection("Mini")
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return new Text('Loading...');
              default:
                return new ListView(
                  children:
                  snapshot.data.documents.map((DocumentSnapshot document) {
                    return new ListTile(
                      isThreeLine: true,
                      trailing: Text(
                        "No of Members = " +
                            document['No of Members'].toString(),
                        style: TextStyle(fontSize: 20.0),
                      ),
                      title: new Text(
                        document['Name'],
                        style: TextStyle(fontSize: 20.0),
                      ),
                      subtitle: new Text(
                        document['Phone'] +
                            "\nReg. by: " +
                            document["Co-Ordinator"],
                        style: TextStyle(fontSize: 20.0),
                      ),
                    );
                  }).toList(),
                );
            }
          },
        ),
      ),
    );
  }
}
