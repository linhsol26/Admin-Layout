import 'package:admin_layout/screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:admin_layout/screens/Sold.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountEmail: Text('admin@gmail.com'),
            accountName: Text('Admin'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                    'https://image.freepik.com/free-vector/portrait-african-american-woman-profile-avatar-young-black-girl_102172-418.jpg'),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.save),
            title: Text("Sold"),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Sold()));
            },
          ),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Login()))),
          // can add more ListTile
        ],
      ),
    );
  }
}
