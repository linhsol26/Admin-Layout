import 'package:admin_layout/constants.dart';
import 'package:flutter/material.dart';
import 'package:admin_layout/models/Department.dart';

class Details extends StatefulWidget {
  final Department department;

  const Details({Key key, this.department}) : super(key: key);
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  void onConfirm() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 0,
            content: Text("Are you sure?"),
            actions: [
              RaisedButton(
                child: Text("No"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              RaisedButton(
                child: Text("Yes"),
                onPressed: () {
                  // do something with data after that.
                  // here I just pop twice to return Manage screen.
                  int count = 0;
                  Navigator.of(context).popUntil((_) => count++ >= 2);
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(widget.department.name),
        centerTitle: true,
      ),
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding / 2),
              child: Text(
                "Customer",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 4),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 4),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Address",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 4),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Phone number",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding / 2),
              child: Text(
                "Product",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 4),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 4),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Price",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 4),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Code",
                ),
              ),
            ),
            RaisedButton(
              onPressed: () => onConfirm(),
              child: Text("Confirm"),
            )
          ],
        ),
      ),
    );
  }
}
