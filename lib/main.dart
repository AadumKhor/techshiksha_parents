import 'package:flutter/material.dart';
import 'package:techshiksha_parents/start_page.dart';
import 'package:techshiksha_parents/start_screen.dart';
import 'login.dart';
import 'start_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.grey),
      title: 'Welcome!',
      home: StartPage(),
      initialRoute: '.',
      routes: {
        '.': (context) => StartPage(),
        // '/testscores':(context)=>TestScoreScreen(),
        '/parent' : (context) => StartScreen(),
        '/login' : (context) => Login(),
        '/panel': (context) => StartScreen()
      },
    );
  }
}
