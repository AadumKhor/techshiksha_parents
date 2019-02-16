import 'package:flutter/material.dart';

class Accounts {
  String account;
  Color color1, color2;
  Accounts({this.account, this.color1, this.color2});
}

final names = [
  new Accounts(
      account: 'Parent Account',
      color1: Colors.yellow[100],
      color2: Colors.yellow[300]),
  new Accounts(
      account: 'Teacher Account',
      color1: Colors.orange[100],
      color2: Colors.orange[300])
];

String title;
Color color11, color22;

class Cards extends StatelessWidget {
  final Accounts acc;

  Cards({this.acc});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        //margin: EdgeInsets.only(left: 30.0, right: 30.0),
        child: DecoratedBox(
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [acc.color1, acc.color2])),
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () {
                  title = acc.account;
                  color11 =acc.color1;
                  color22 = acc.color2;
                  Navigator.pushNamed(context, '/login');
                },
                iconSize: 40.0,
              ),
              Text(acc.account,
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            ],
          ),
        ));
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
          decoration: new BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.teal[200], Colors.teal])),
          child: Container(
              child: Column(
            children: <Widget>[
              Container(margin: EdgeInsets.only(bottom: 50.0)),
              Container(
                child: Image(
                  image: new AssetImage('assets/logo.png'),
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              Text(
                'TechShiksha',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
              ),
              Container(margin: EdgeInsets.only(bottom: 50.0)),
              Cards(acc: names[0]),
              Container(margin: EdgeInsets.only(bottom: 30.0)),
              Cards(acc: names[1])
            ],
          ))),
    );
  }
}
