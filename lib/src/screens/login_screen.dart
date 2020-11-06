import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(80.0),
      child: Form(
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(top: 25.0),
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        labelStyle: TextStyle(
          color: Colors.deepOrange[900],
        ),
        hintText: 'you@example.com',
        hintStyle: TextStyle(
          color: Colors.deepOrange[300],
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.deepOrange[900],
          ),
        ),
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(
          color: Colors.deepOrange[900],
        ),
        hintText: 'Password',
        hintStyle: TextStyle(
          color: Colors.deepOrange[300],
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.deepOrange[900],
          ),
        ),
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.pink[50],
      onPressed: () {},
      child: Text('Submit'),
    );
  }
}
