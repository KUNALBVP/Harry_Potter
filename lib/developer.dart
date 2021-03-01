import 'package:flutter/material.dart';

class dev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('DEVELOPER',style: TextStyle(fontFamily: 'Girassol',letterSpacing: 1.5,fontWeight:FontWeight.bold,fontSize: 25))),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          height: 450,
          width: 350,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[900],

              ),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(child: Text("Hi, I'm Aditya Maheshwari prefinal year student of computer science engineering and sole Developer of this App. I had developed this app just to brush up My App development Skills. ",style: TextStyle(fontFamily: "Girassol",fontWeight: FontWeight.bold,fontSize: 20, letterSpacing: 1.5),)),
                  SizedBox(height: 25,),
                  Center(child: Text("Hope u Guys will like this App. Any Suggestion is highly Welcomed. Enjoy the App",style: TextStyle(fontFamily: "Girassol",fontWeight: FontWeight.bold,fontSize: 20, letterSpacing: 1.5),))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
