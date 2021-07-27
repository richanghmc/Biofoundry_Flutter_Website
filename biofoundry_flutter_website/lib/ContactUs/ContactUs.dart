import 'package:flutter/material.dart';
import 'package:biofoundry_website/Navbar/Navbar.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: BoxConstraints.expand(height: 800),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(0, 76, 141, 1.0),
                Color.fromRGBO(161, 231, 240, 1.0)
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Navbar(),
              SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Row(
                  children: [
                    Text("Follow our Instagram!",
                        style: TextStyle(fontSize: 40, color: Colors.white)),
                    SizedBox(width: 15),
                    MaterialButton(
                        color: Colors.lightBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        onPressed: () {
                          launch(
                              "https://www.instagram.com/biomakerspacehmc/?hl=en");
                        },
                        child: Text(
                          "@biomakerspacehmc",
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        )),
                    SizedBox(width: 25),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Row(
                  children: [
                    Text("Visit our website!",
                        style: TextStyle(fontSize: 40, color: Colors.white)),
                    SizedBox(width: 15),
                    MaterialButton(
                        color: Colors.lightBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        onPressed: () {
                          launch("https://biomakerspace.com/");
                        },
                        child: Text("biomakerspace.com",
                            style:
                                TextStyle(fontSize: 35, color: Colors.white)))
                  ],
                ),
              ),
              SizedBox(height: 50),
              Text("Questions?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 50, color: Colors.white)),
              SizedBox(height: 10),
              SelectableText("Email us at hmc-biomakerspace-l@g.hmc.edu",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, color: Colors.white),
                  onTap: () => launch("mailto:hmc-biomakerspace-l@g.hmc.edu")),
            ],
          )),
    );
  }
}
