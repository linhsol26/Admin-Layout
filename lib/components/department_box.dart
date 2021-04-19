import 'package:admin_layout/constants.dart';
import 'package:flutter/material.dart';
import 'package:admin_layout/models/Department.dart';

class DepartmentBox extends StatelessWidget {
  final Department department;
  final Function press;
  const DepartmentBox({Key key, this.department, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding / 2),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              department.location,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            Image.asset(
              "assets/images/store.jpg",
            ),
            Text(
              department.address,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
