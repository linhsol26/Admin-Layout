import 'package:admin_layout/models/Bill.dart';
import 'package:admin_layout/models/Department.dart';

class User {
  final int id;
  final String name;
  final List<Department> departments;
  final List<Bill> sold;

  User({this.id, this.name, this.departments, this.sold});
}

User admin =
    new User(id: 1, name: "Admin", departments: department, sold: bills);
