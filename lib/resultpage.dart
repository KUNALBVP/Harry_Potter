import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
class result extends StatefulWidget {
  result({this.xy,this.yz,this.abc});
  final xy;
  int yz;
  String abc;

  @override
  _resultState createState() => _resultState();
}

class _resultState extends State<result> {
  String role;
  String house;
  String blood;
  String species;

  void initState(){
    super.initState();
    method();
  }
  method(){
  role=jsonDecode(widget.abc)[widget.yz]['role']??"Not Applicable";
  house=jsonDecode(widget.abc)[widget.yz]['house']??"Not Applicable";
  blood=jsonDecode(widget.abc)[widget.yz]['bloodStatus']??"Not Applicable";
  species=jsonDecode(widget.abc)[widget.yz]['species']??"Not Applicable";
  if(widget.xy=="James Potter I") {
    role="Father of Harry Potter";
  }
  if(widget.xy=="Lily J. Potter") {
    role="Mother of Harry Potter";
  }
  if(widget.xy=="Regulus Black") {
    role="Brother of Sirius Black";
  }
  if(widget.xy=="Lord Voldemort") {
    role="Murderer of Harry Potter's Parents";
  }
  if(widget.xy=="Bellatrix Lestrange") {
    role="Pure Blood Dark Witch";
  }
  if(widget.xy=="Minerva McGonagall") {
    house="Head of Gryffindor House";
  }
  if(widget.xy=="Filius Flitwick")
  {
    house="Head of RavenClaw House";
  }
  if(widget.xy=="Severus Snape") {
    house="Head of Slytherin House";
  }
  if(widget.xy=="Pomona Sprout") {
    house="Head of Hufflepuff House";
  }

  if(widget.xy=="Godric Gryffindor") {
    house="Gryffindor (Founder)";
  }
  if(widget.xy=="Rowena Ravenclaw"){
    house="Ravenclaw (Founder)";
  }
  if(widget.xy=="Salazar Slytherin")
  {
    house="Slytherin (Founder)";
  }
  if(widget.xy=="Helga Hufflepuff"){
    house="Hufflepuff (Founder)";
  }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/hogwarts.jpg'
                ''), fit: BoxFit.fill
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Center(child: Text('${widget.xy}', style: TextStyle(fontFamily: 'Girassol',letterSpacing: 1.5,fontWeight:FontWeight.bold,fontSize: 25),)),

        ),
        body: Scrollbar(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                  elevation: 8,
                  margin: EdgeInsets.all(15),
                  color: Colors.black45,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    width: 300,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Name',style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 30,color: Colors.green, letterSpacing: 1.2),),
                        Text('${widget.xy}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 23, letterSpacing: 1.2),),
                      ],
                    ),
                  )
              ),
              SizedBox(height: 10),
              Card(
                  elevation: 8,
                  margin: EdgeInsets.all(15),
                  color: Colors.black45,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    width: 300,
                    height: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('House',style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 30, color: Colors.green, letterSpacing: 1.2),),
                        Text('${house}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1.2),),
                      ],
                    ),
                  )
              ),
              Card(
                  elevation: 8,
                  margin: EdgeInsets.all(15),
                  color: Colors.black45,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    width: 300,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Blood Status',style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 28,color: Colors.green, letterSpacing: 1.2),),
                        Text('${blood}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1.2),),
                      ],
                    ),
                  )
              ),
              Card(
                  elevation: 8,
                  margin: EdgeInsets.all(15),
                  color: Colors.black45,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    width: 300,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Species ',style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 30, color:Colors.green,letterSpacing: 1.2),),
                        Text('${species}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1.2),),
                      ],
                    ),
                  )
              ),
              SizedBox(height: 75,)


            ],
          ),
        ),
      ),
    );
  }
}


