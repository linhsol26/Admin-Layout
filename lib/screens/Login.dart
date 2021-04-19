import 'package:admin_layout/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:admin_layout/screens/Manage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final String demoUsername = "admin";
  final String demoPassword = "admin";

  @override
  void initState() {
    super.initState();
  }

  void errorWarn() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text("Your username or password is wrong! Try again!"),
          );
        });
    _usernameController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SvgPicture.asset("assets/images/samsung-1.svg"),
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                child: TextFormField(
                  controller: _usernameController,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Enter your username",
                    border: UnderlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter your username",
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  if (_usernameController.text == demoUsername &&
                      _passwordController.text == demoPassword) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Manage(),
                      ),
                    );
                  } else {
                    errorWarn();
                  }
                },
                color: kPrimaryColor,
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
