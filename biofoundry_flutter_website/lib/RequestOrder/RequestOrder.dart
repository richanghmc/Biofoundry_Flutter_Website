import 'package:flutter/material.dart';
import 'package:biofoundry_website/Navbar/Navbar.dart';
import 'package:url_launcher/url_launcher.dart';

class RequestOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(0, 76, 141, 1.0),
                Color.fromRGBO(161, 231, 240, 1.0)
              ]),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Navbar(),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 600,
                    height: 800,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: MaterialButton(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            onPressed: () {
                              launch(
                                  'https://docs.google.com/forms/d/e/1FAIpQLSe1LUmbCEEkIa-6NHBge323pzpWT01MZh3r0xA4KWfBCi_eBg/viewform?usp=sf_link');
                            },
                            child: Text("Request Order",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30.0)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          child: Text(
                            "To request an order, all you need to do is upload your desired sequence onto the google form that will pop up when you press the ‘Request Order’ button.",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Image.asset("assets/images/pipette.png"),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    width: 600,
                    height: 800,
                    alignment: Alignment.centerRight,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          color: Colors.greenAccent,
                          onPressed: () {},
                          child: Text("Status",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.0)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        child: Text(
                          "Already ordered? Check the status of your order here!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20),
                        child: Image.asset("assets/images/magnifyingglass.png"),
                      )
                    ]),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// use containers to separate the column widgets with the text.
