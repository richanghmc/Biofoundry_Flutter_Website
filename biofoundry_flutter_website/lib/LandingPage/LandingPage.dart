import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width){
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Build your \nCustom Plasmid", 
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white
                  ),
                ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text("Give us any sequence of DNA you want in a plasmid and we will build it for you.",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white
              ),),
            ),
            MaterialButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
                onPressed: (){
                  launch('https://docs.google.com/forms/d/e/1FAIpQLSe1LUmbCEEkIa-6NHBge323pzpWT01MZh3r0xA4KWfBCi_eBg/viewform?usp=sf_link');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  child: Text(
                    "Input your desired sequence",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
            )
          ],
        ),
      ),
      Image.asset(
        "assets/images/plasmid.png",
        width: width,
      
        fit: BoxFit.scaleDown
        )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth>800){
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width/2),
          );
        }
        else{
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}