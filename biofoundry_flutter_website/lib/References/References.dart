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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text("Modular Cloning Paper", 
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white
                    ),
                ),
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("Weber, E., Engler, C., Gruetzner, R., Werner, S., & Marillonnet, S. (2011). A Modular Cloning System for Standardized Assembly of Multigene Constructs. PLoS ONE, 6(2), e16765. https://doi.org/10.1371/journal.pone.0016765",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text("Fast Cloning Paper", 
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("Li, C., Wen, A., Shen, B., Lu, J., Huang, Y., & Chang, Y. (2011). FastCloning: a highly simplified, purification-free, sequence- and ligation-independent PCR cloning method. BMC Biotechnology, 11(1), 92. https://doi.org/10.1186/1472-6750-11-92",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}