import 'package:flutter/material.dart';

void main()=> runApp(PandTApp());

class PandTApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parents and Teachers',
      home: StartScreen(),
    );
  }
}

class StartScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
      ),
      //TODO: Implement drawer with animation

      body: new Container(
        
      ),
    );
  }
}