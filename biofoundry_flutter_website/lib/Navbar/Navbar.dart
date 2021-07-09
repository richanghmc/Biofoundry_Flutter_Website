import 'package:flutter/material.dart';
import 'package:biofoundry_website/AboutUs/AboutUs.dart';
import 'package:biofoundry_website/main.dart';
import 'package:biofoundry_website/References/References.dart';
import 'package:biofoundry_website/RequestOrder/RequestOrder.dart';
import 'package:url_launcher/url_launcher.dart';


class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth>800){
          return DesktopNavbar();
        }
        else{
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20, horizontal:40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            MaterialButton(
              onPressed:(){
                Route route = MaterialPageRoute(builder: (context)=> MyHomePage());
                Navigator.push(context, route);
              },
              child: Text(
              "HMC Biofoundry", 
              style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
              ),
              ),
              Row(
                children: <Widget>[
                  MaterialButton(
                    onPressed:(){
                      Route route = MaterialPageRoute(builder: (context)=> AboutUs());
                      Navigator.push(context, route);
                    },
                    child: Text("About Us",
                      style: TextStyle(color: Colors.white),
                      ),
                  ),
                  SizedBox(width:30,),
                  MaterialButton(
                    onPressed: (){
                      Route route = MaterialPageRoute(builder: (context)=> RequestOrder());
                      Navigator.push(context, route);
                    },
                    child:Text("Request Order",
                    style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width:30,),
                  MaterialButton(
                    onPressed: (){
                      Route route = MaterialPageRoute(builder: (context)=> References());
                      Navigator.push(context, route);
                    },
                    child: Text("References",
                    style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(width:30),
                  MaterialButton(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      onPressed:(){
                        launch('https://docs.google.com/forms/d/e/1FAIpQLSe1LUmbCEEkIa-6NHBge323pzpWT01MZh3r0xA4KWfBCi_eBg/viewform?usp=sf_link');
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white)
                  ),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
  
class MobileNavbar extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20, horizontal:40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            MaterialButton(
              onPressed:(){
                Route route = MaterialPageRoute(builder: (context)=> MyHomePage());
                Navigator.push(context, route);
              },
              child: Text(
              "HMC Biofoundry", 
              style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
              ),
              ),
              Row(
                children: <Widget>[
                  MaterialButton(
                    onPressed:(){
                      Route route = MaterialPageRoute(builder: (context)=> AboutUs());
                      Navigator.push(context, route);
                    },
                    child: Text("About Us",
                      style: TextStyle(color: Colors.white),
                      ),
                  ),
                  SizedBox(width:30,),
                  MaterialButton(
                    onPressed: (){
                      Route route = MaterialPageRoute(builder: (context)=> RequestOrder());
                      Navigator.push(context, route);
                    },
                    child:Text("Request Order",
                    style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width:30,),
                  MaterialButton(
                    onPressed: (){
                      Route route = MaterialPageRoute(builder: (context)=> References());
                      Navigator.push(context, route);
                    },
                    child: Text("Refereces",
                    style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(width:30),
                  MaterialButton(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      onPressed:(){
                        Route route = MaterialPageRoute(builder: (context)=> RequestOrder());
                        Navigator.push(context, route);
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white)
                  ),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}