import 'package:flutter/material.dart';

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
              onPressed:(){},
              child: Text(
              "HMC Biofoundry", 
              style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
              ),
              ),
              Row(
                children: <Widget>[
                  MaterialButton(
                    onPressed:(){},
                    child: Text("About Us",
                      style: TextStyle(color: Colors.white),
                      ),
                  ),
                  SizedBox(width:30,),
                  MaterialButton(
                    onPressed: (){},
                    child:Text("Request Order",
                    style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width:30,),
                  MaterialButton(
                    onPressed: (){},
                    child: Text("Refereces",
                    style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(width:30),
                  MaterialButton(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      onPressed:(){},
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                onPressed: (){},
                child: Text(
                "HMC Biofoundry", 
                style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MaterialButton(
                    onPressed:(){},
                    child: Text("About Us",
                      style: TextStyle(color: Colors.white),
                      ),
                  ),
                  SizedBox(width:30,),
                  MaterialButton(
                    onPressed: (){},
                    child:Text("Request Order",
                    style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width:30,),
                  MaterialButton(
                    onPressed: (){},
                    child: Text("Refereces",
                    style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(width:30),
                  MaterialButton(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      onPressed:(){},
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white)
                        ),
                      )
                    ],
                  ),
                )
            ]
        )
      ),
    );
  }
}