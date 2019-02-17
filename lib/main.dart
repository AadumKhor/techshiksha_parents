import 'package:flutter/material.dart';
import 'package:techshiksha_parents/LoginPage/login.dart';
import 'package:techshiksha_parents/LoginPage/start_page.dart';
import 'package:techshiksha_parents/start_screen.dart';
import 'start_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.grey),
      title: 'Welcome!',
      home: Options(),
      initialRoute: '.',
      routes: {
        '.': (context) => LoginPage(),
        // '/testscores':(context)=>TestScoreScreen(),
        '/parent' : (context) => StartScreen(),
        '/signup' : (context) => StartPage(),
        '/panel': (context) => StartScreen()
      },
    );
  }
}
