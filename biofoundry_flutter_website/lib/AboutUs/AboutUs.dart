import 'package:flutter/material.dart';
import 'package:biofoundry_website/Navbar/Navbar.dart';

class AboutUs extends StatelessWidget {
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
            ]),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Navbar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 300,
                      child: Text(
                        "Who we are",
                        style: TextStyle(fontSize: 35.0, color: Colors.white),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 350,
                      width: 650,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Text(
                          "The PolymerSpace, also known as the HMC BioMakerspace, is a student-run biology laboratory funded by the Shanahan Grant and the Office of Community Engagement at Harvey Mudd College (HMC). We provide our members from the Claremont Colleges with access to bench space, reagents, equipment, and materials to conduct genetic engineering research as well as individual funding for other types of biology projects. Our members aim to push the boundaries of genetic engineering and to expose the field to unconventional mindsets with their interdisciplinary expertise. ",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Image.asset("assets/images/Olinlab.png",
                      width: 600, height: 600, alignment: Alignment.centerRight,),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
