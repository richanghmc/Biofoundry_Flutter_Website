import 'package:flutter/material.dart';
import 'package:biofoundry_website/Navbar/Navbar.dart';
// import 'package:biofoundry_website/LandingPage/LandingPage.dart';

class AboutUs extends StatelessWidget {
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Text("Give summary of who we are and what this website should do", 
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}