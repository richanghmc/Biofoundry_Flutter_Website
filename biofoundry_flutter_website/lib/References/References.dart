import 'package:flutter/material.dart';
import 'package:biofoundry_website/Navbar/Navbar.dart';

class References extends StatelessWidget {
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
          children: <Widget>[
            Navbar(),
            Text("Will add in stuff", 
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white
                  ),
                ),
          ],
        ),
      ),
    );
  }
}