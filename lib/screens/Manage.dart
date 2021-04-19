import 'package:admin_layout/constants.dart';
import 'package:flutter/material.dart';
import 'package:admin_layout/components/header.dart';
import 'package:admin_layout/components/side_bar.dart';
import 'package:admin_layout/components/department_box.dart';
import 'package:admin_layout/models/Department.dart';
import 'package:admin_layout/screens/Details.dart';

class Manage extends StatefulWidget {
  Manage({Key key}) : super(key: key);

  @override
  _ManageState createState() => _ManageState();
}

class _ManageState extends State<Manage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
            child: Header(size: size),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: GridView.builder(
                itemCount: department.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: kDefaultPadding / 2,
                  crossAxisSpacing: kDefaultPadding / 2,
                ),
                itemBuilder: (context, index) => DepartmentBox(
                  department: department[index],
                  press: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          Details(department: department[index]),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
