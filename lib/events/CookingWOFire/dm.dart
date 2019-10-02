import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class dm extends StatefulWidget {
  @override
  _dmState createState() => _dmState();
}

class _dmState extends State<dm> {
  var _rates = ['Male', 'Female'];
  var _itemSel = "Male";
  TextEditingController _nameCon = new TextEditingController();
  TextEditingController _phCon = new TextEditingController();
  double _slider = 1.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Description",
            style: TextStyle(fontSize: 40.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "An amazing event about cookingWOFire",
            style: TextStyle(fontSize: 25),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Rules",
            style: TextStyle(fontSize: 35.0),
          ),
        ),
        Column(
          children: <Widget>[
            Text(
              "> 6 in a team",
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "> karaoke must be provided in advance",
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Fee",
                style: TextStyle(fontSize: 35.0),
              ),
            ),
            Text(
              "₹ 100 per head",
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "₹ 500 per Team Of 6",
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
        Divider(),
        SingleChildScrollView(
          child: Form(
            child: UI(),
            autovalidate: true,
          ),
        )
      ],
    );
  }

  void _onDrop(String newValueSelected) {
    setState(() {
      this._itemSel = newValueSelected;
    });
  }

  Widget UI() {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "Registration",
            style: TextStyle(fontSize: 30.0),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              validator: (String arg) {
                if (arg.length == 0)
                  return 'Name Required';
                else
                  return null;
              },
              controller: _nameCon,
              textCapitalization: TextCapitalization.characters,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter Your Name [Capital]',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              validator: (String arg) {
                if (arg.length != 10)
                  return 'Please Enter 10 Digit Phone Number';
                else
                  return null;
              },
              controller: _phCon,
              textCapitalization: TextCapitalization.characters,
              maxLength: 10,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Phone Number',
                  hintText: 'Enter Your Phone Number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
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
                width: MediaQuery.of(context).size.width / 2,
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
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
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
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  submite() async {
    final FirebaseUser user = await FirebaseAuth.instance.currentUser();

    print(_nameCon.text + _phCon.text + _itemSel + _slider.toInt().toString());
    if (_nameCon.text != "" && _phCon.text != "") {
      /*await the Firestore Upload*/
      await Firestore.instance
          .collection("Events")
          .document("Off Stage")
          .collection("cookingWOFire")
          .document( DateTime.now().toString())
          .setData({
        'Name': _nameCon.text,
        'Phone': _phCon.text,
        'Gender': _itemSel,
        "No of Members": _slider.toInt(),
        "Co-Ordinator": user.displayName
      });

      Navigator.pop(context);
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
