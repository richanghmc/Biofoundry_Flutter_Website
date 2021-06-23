import 'package:biofoundry_website/LandingPage/LandingPage.dart';
import 'package:biofoundry_website/Navbar/Navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HMC Biofoundry',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Montserrat"
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color.fromRGBO(0, 76, 141, 1.0),Color.fromRGBO(161, 231, 240, 1.0)]
          ),
        ),
        child: Column(
          children: <Widget>[Navbar(), Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal:40.0 ),
            child: LandingPage(),
          )],
        ),
      ),
    );
  }
}