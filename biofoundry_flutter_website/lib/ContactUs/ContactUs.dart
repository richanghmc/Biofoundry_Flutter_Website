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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Row(
                  children: [
                    Text("Follow our Instagram!",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
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
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )),
                        SizedBox(width:25),
                    Image.asset("assets/images/instagramlogo.png",
                    width: 50,
                    height: 50)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Row(
                  children: [
                    Text("Visit our website!", style: TextStyle(fontSize: 20, color: Colors.white)),
                    SizedBox(width: 15),
                    MaterialButton(
                          color: Colors.lightBlue,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          onPressed: () {
                            launch(
                                "https://biomakerspace.com/");
                          },
                          child: Text("biomakerspace.com",
                          style: TextStyle(fontSize: 15, color: Colors.white))
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
