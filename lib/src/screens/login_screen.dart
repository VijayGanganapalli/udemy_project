import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../providers/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            emailField(bloc),
            passwordField(bloc),
            Container(margin: EdgeInsets.only(top: 18.0)),
            loginButton(bloc),
          ],
        ),
      ),
    );
  }

  Widget emailField(BlocLoginScreen bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Email",
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget passwordField(BlocLoginScreen bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Password",
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget loginButton(BlocLoginScreen bloc) {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return RaisedButton(
          child: Text("Login"),
          color: Colors.greenAccent,
          onPressed: snapshot.hasData
              ? () {
                  print("Hi there! Login successful");
                }
              : null,
        );
      },
    );
  }
}
