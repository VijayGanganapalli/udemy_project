import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 18.0)),
            loginButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(labelText: "Email"),
    );
  }

  Widget passwordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(labelText: "Password"),
    );
  }

  Widget loginButton() {
    return RaisedButton(
      child: Text("Login"),
      color: Colors.greenAccent,
      onPressed: () {},
    );
  }
}
