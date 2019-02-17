import 'package:flutter/material.dart';
import 'start_page.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController fadeController;
  Animation fadeAnimation;

  void initState() {
    super.initState();
    fadeController =
        new AnimationController(vsync: this, duration: Duration(seconds: 5));
    fadeAnimation = new CurvedAnimation(
        parent: fadeController, curve: Curves.fastOutSlowIn);
  }

  @override
  void dispose() {
    fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    fadeController.forward();
    return FadeTransition(
      opacity: fadeAnimation,
      child: Options(),
    );
  }
}

class Options extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.green[800], Colors.deepPurpleAccent])),
      child: Stack(
        children: <Widget>[
          new Positioned(
            top: 50.0,
            left: 20.0,
            right: 20.0,
            child: Image(
              image: AssetImage('assets/logo.png'),
              height: 200.0,
              width: 200.0,
            ),
          ),
          new Positioned(
            top: 260.0,
            left: 20.0,
            right: 20.0,
            child: Center(
              child: new Text('TECHSHIKSHA',
                  style: new TextStyle(color: Colors.white, fontSize: 36.0)),
            ),
          ),
          new Positioned(
            top: 400.0,
            left: 20.0,
            right: 20.0,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: new Container(
                height: 100.0,
                width: 200.0,
                decoration: new BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                        style: BorderStyle.solid)),
                child: Center(
                  child: new Text(
                    'LOGIN',
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          new Positioned(
            top: 510.0,
            left: 20.0,
            right: 20.0,
            child: new Container(
              height: 100.0,
              width: 200.0,
              decoration: new BoxDecoration(
                  border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                      style: BorderStyle.solid)),
              child: Center(
                child: new Text(
                  'SIGN UP',
                  style: new TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// var _admn;
// var _pwd;

// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             Container(
//               height: 80,
//               width: double.infinity,
//               decoration: new BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [color11, color22],
//                   begin: Alignment.centerLeft,
//                   end: Alignment.centerRight
//                 )
//               ),
//               child: Column(
//                 children: <Widget>[
//                   SizedBox(height: 25),
//                   Text(title, style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
//                 ],
//               ),
//             ),
//             SizedBox(height: 50.0),
//             Icon(Icons.account_circle, size: 150.0),
//             userName(),
//             SizedBox(height: 15.0),
//             passwordField(),
//             SizedBox(
//               height: 15.0,
//             ),
//             RaisedButton(
//               disabledColor: Colors.grey,
//               highlightColor: color22,
//               splashColor: color22,
//               onPressed: () {
//                 Navigator.pushNamed(context, '/panel');
//               },
//               child: Text('LOGIN'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget userName() {
//   return TextFormField(
//       decoration: InputDecoration(
//         // contentPadding: EdgeInsets.only(left: 30.0, right: 30.0),
//         labelText: 'Admission No.',
//         //hasFloatingPlaceholder: true,
//         border: OutlineInputBorder(),
//       ),
//       validator: (val) =>
//           (val.length < 4 || val.length > 4) ? 'Invalid admission no.' : null,
//       onSaved: (val) => _admn = val);
// }

// Widget passwordField() {
//   return TextFormField(
//       obscureText: true,
//       decoration: InputDecoration(
//           //contentPadding: EdgeInsets.only(top: 30.0, bottom: 30.0),
//           border: OutlineInputBorder(),
//           hintText: 'Password',
//           labelText: 'Password'),
//       validator: (val) => val.length < 5 ? 'Incorrect password' : null,
//       onSaved: (val) => _pwd = val);
// }
