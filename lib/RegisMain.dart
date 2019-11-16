import 'package:fest_management/events.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class regisMain extends StatefulWidget {
  var every;

  regisMain(var ev) {
    every = ev;
  }

  @override
  _regisMainState createState() => _regisMainState(every);
}

class _regisMainState extends State<regisMain> {
  var every;

  _regisMainState(var ev) {
    every = ev;
  }

  var name = new TextEditingController();
  var phno = new TextEditingController();

  double _slider = 1.0;

  var _rates = ['Male', 'Female'];
  var _itemSel = "Male";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(every),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/building.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SafeArea(
            child: Form(
              key: _formKey,
              autovalidate: true,
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                    height: h/1.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Card(

                      borderOnForeground: true,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.0),
                        borderRadius: BorderRadius.circular(20.0),
                      ),

                      elevation: 0,
                      child: Padding(padding: EdgeInsets.all(20.0), child: forme(),),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onDrop(String newValueSelected) {
    setState(() {
      this._itemSel = newValueSelected;
    });
  }


  Widget line() {
    return new Container(
        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
        child: Divider(
          color: Colors.black,
          height: 36,
        ));
  }

  Widget forme() {
    return Center(
      child: ListView(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom : 20.0),
            child: Center(
              child: Text("registration for $every", style: TextStyle(fontSize: 30.0),),
            ),
          ),
          line(),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0, bottom: 10.0),
            child: TextFormField(
                controller: name,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter Participant\'s Name';
                  }
                  return null;
                },
                decoration: InputDecoration(

                  prefixIcon: Icon(Icons.tag_faces),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: 'Name',
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                controller: phno,
                maxLength: 10,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter participant\'s Phone Number';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  prefixText: "+91",

                  prefixIcon: Icon(Icons.phone_android),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: 'Phone Number',
                )),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("No. Of Participants"),
                Slider(
                  value: _slider,
                  onChanged: (double values) {
                    setState(() {
                      _slider = values;
                    });
                  },
                  divisions: 5,
                  activeColor: Colors.blue,
                  label: _slider.toInt().toString(),
                  max: 6,
                  min: 1,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Gender"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<String>(
                      hint: Text("Gender"),
                      items: _rates.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: _itemSel,
                      onChanged: (String newValueSelected) {
                        _onDrop(newValueSelected);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          /*Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: FlatButton(
                              color: Color(0xff001EBA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              onPressed: () {
                                submite();
                              },
                              child: Text(
                                "Submit",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),*/
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FlatButton(
                    color: Color(0xff001EBA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      submite();
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    color: Colors.red,
                    onPressed: () {


                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => events()));
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            actions: <Widget>[
                              FlatButton(onPressed: (){
                                Navigator.pop(context);
                              }, child: Text("Ok, I Understand", style: TextStyle(fontSize: 18.0),),)
                            ],
                            // Retrieve the text the that user has entered by using the
                            // TextEditingController.
                            content: Text("Cancelled registration for $every", style: TextStyle(fontSize: 20.0),),
                          );
                        },
                      );

                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  submite() async {
    final FirebaseUser user = await FirebaseAuth.instance.currentUser();

    print(name.text + phno.text + _itemSel + _slider.toInt().toString());
    if (name.text != "" && phno.text != "") {
      await Firestore.instance
          .collection("req")
          .document("Main Stage")
          .collection("names")
          .document("Events")
          .collection(every)
          .document()
          .setData({
        'Name': name.text,
        'Phone': phno.text,
        'Gender': _itemSel,
        "No of Members": _slider.toInt(),
        "Co-Ordinator": user.displayName
      });
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => events()));
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            // Retrieve the text the that user has entered by using the
            // TextEditingController.
            content: Text("Submitted"),
          );
        },
      );
    } else {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            // Retrieve the text the that user has entered by using the
            // TextEditingController.
            content: Text("Empty Fields"),
          );
        },
      );
    }
  }
}
