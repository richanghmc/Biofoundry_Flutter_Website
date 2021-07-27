import 'package:flutter/material.dart';
import 'package:biofoundry_website/AboutUs/AboutUs.dart';
import 'package:biofoundry_website/main.dart';
import 'package:biofoundry_website/References/References.dart';
import 'package:biofoundry_website/RequestOrder/RequestOrder.dart';
import 'package:biofoundry_website/ContactUs/ContactUs.dart';

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
                      onPressed:(){
                        Route route = MaterialPageRoute(builder: (context)=> ContactUs());
                        Navigator.push(context, route);
                      },
                      child: Text(
                        "Contact Us",
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
                      onPressed:(){
                        Route route = MaterialPageRoute(builder: (context)=> ContactUs());
                        Navigator.push(context, route);
                      },
                      child: Text(
                        "Contact Us",
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