import 'package:flutter/material.dart';
import 'package:techshiksha_parents/start_screen.dart';
// import 'package:techshiksha_parents/testscore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.grey),
      title: 'Welcome!',
      home: StartScreen(),
      initialRoute: '.',
      routes: {
        '.': (context) => StartScreen(),
        // '/testscores':(context)=>TestScoreScreen(),
      },
    );
  }
}
