import 'package:flutter/material.dart';
import 'dart:convert';
class spellresult extends StatefulWidget {
  spellresult({this.clickedspell,this.index,this.wholedata});
  final clickedspell;
  String index;
  String wholedata;

  @override
  _spellresultState createState() => _spellresultState();
}

class _spellresultState extends State<spellresult> {
  String type;
  String effect;


  void initState(){
    super.initState();
    method();
  }
  method(){
    var abc=jsonDecode(widget.wholedata);
    int i;
    for( i=0;i<abc.length;i++){
      if(abc[i]["_id"]==widget.index){
        break;
      }
    }
    type=jsonDecode(widget.wholedata)[i]['type']??"UnKnown";
    effect=jsonDecode(widget.wholedata)[i]['effect']??"UnKnown";

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
          backgroundColor: Colors.black,
          title: Center(child: Text('${widget.clickedspell}', style: TextStyle(fontFamily: 'Girassol',letterSpacing: 1.5,fontWeight:FontWeight.bold,fontSize: 25),)),

          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: const Icon(Icons.arrow_back),

                onPressed: (){
                  Navigator.of(context).pop();


                },
              );
            },
          ),
        ),
        body: ListView(
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
                      Text('Spell Name',style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 30,color: Colors.green, letterSpacing: 1.2),),
                      Text('${widget.clickedspell}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 23, letterSpacing: 1.2),),
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
                      Text('Type',style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 30,color: Colors.green, letterSpacing: 1.2),),
                      Text('${type}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 23, letterSpacing: 1.2),),
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
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Effect',style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 30, color: Colors.green, letterSpacing: 1.2),),
                      Text('${effect}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1.2),),
                    ],
                  ),
                )
            ),

          ],
        ),
      ),
    );
  }
}
