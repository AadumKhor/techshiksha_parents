import 'package:flutter/material.dart';
import 'start_page.dart';

var _admn;
var _pwd;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              width: double.infinity,
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  colors: [color11, color22],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight
                )
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 25),
                  Text(title, style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(height: 50.0),
            Icon(Icons.account_circle, size: 150.0),
            userName(),
            SizedBox(height: 15.0),
            passwordField(),
            SizedBox(
              height: 15.0,
            ),
            RaisedButton(
              disabledColor: Colors.grey,
              highlightColor: color22,
              splashColor: color22,
              onPressed: () {
                Navigator.pushNamed(context, '/panel');
              },
              child: Text('LOGIN'),
            )
          ],
        ),
      ),
    );
  }
}

Widget userName() {
  return TextFormField(
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.only(left: 30.0, right: 30.0),
        labelText: 'Admission No.',
        //hasFloatingPlaceholder: true,
        border: OutlineInputBorder(),
      ),
      validator: (val) =>
          (val.length < 4 || val.length > 4) ? 'Invalid admission no.' : null,
      onSaved: (val) => _admn = val);
}

Widget passwordField() {
  return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          //contentPadding: EdgeInsets.only(top: 30.0, bottom: 30.0),
          border: OutlineInputBorder(),
          hintText: 'Password',
          labelText: 'Password'),
      validator: (val) => val.length < 5 ? 'Incorrect password' : null,
      onSaved: (val) => _pwd = val);
}
