import 'package:flutter/material.dart';
import 'dart:convert';
class eachhouse extends StatefulWidget {
  eachhouse({this.keys,this.data});
  final keys;
  final data;
  @override
  _eachhouseState createState() => _eachhouseState();
}

class _eachhouseState extends State<eachhouse> {
  String name;
  String mascot;
  String hod;
  String ghost;
  String founder;
  List val;
  List col;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    method();
  }
  method(){
    name=jsonDecode(widget.data)[widget.keys]['name']??"Not Applicable";
    mascot=jsonDecode(widget.data)[widget.keys]['mascot']??"Not Applicable";
    hod=jsonDecode(widget.data)[widget.keys]['headOfHouse']??"Not Applicable";
    ghost=jsonDecode(widget.data)[widget.keys]['houseGhost']??"Not Applicable";
    founder=jsonDecode(widget.data)[widget.keys]['founder']??"Not Applicable";
    val=jsonDecode(widget.data)[widget.keys]['values']??"Not Applicable";
    col=jsonDecode(widget.data)[widget.keys]['colors']??"Not Applicable";


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
      child:Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text(name, style: TextStyle(fontFamily: 'Girassol',letterSpacing: 1.5,fontWeight:FontWeight.bold,fontSize: 25),)),
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: const Icon(Icons.arrow_back),

                onPressed: (){

                  Navigator.of(context).pop();
                  /*Navigator.push(context,MaterialPageRoute(builder: (context)
                {
                  return homes(data: widget.abc,);
                }));*/

                },
              );
            },
          ),
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
                        Text('${name}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 23, letterSpacing: 1.2),),
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
                        Text('Mascot',style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 30,color: Colors.green, letterSpacing: 1.2),),
                        Text('${mascot}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 23, letterSpacing: 1.2),),
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
                        Text('Head Of House ',style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 30, color: Colors.green, letterSpacing: 1.2),),
                        Text('${hod}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1.2),),
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
                        Text('House Ghost ',style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 28,color: Colors.green, letterSpacing: 1.2),),
                        Text('${ghost}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1.2),),
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
                        Text('Founder ',style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 30, color:Colors.green,letterSpacing: 1.2),),
                        Text('${founder}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1.2),),
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
                        Text('House Colors',style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 30,color: Colors.green, letterSpacing: 1.2),),
                        Text('${col[0]}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1.2),),
                        Text('${col[1]}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1.2),),

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
                    height: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Values ',style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 28,color: Colors.green, letterSpacing: 1.2),),
                        Text('${val[0]}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1.2),),
                        Text('${val[1]}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1.2),),
                        Text('${val[2]}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1.2),),
                        Text('${val[3]}', style: TextStyle(fontFamily: 'Girassol',fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1.2),),
                      ],
                    ),
                  )
              ),
              SizedBox(height: 75,)

            ],
          ),
        ),
      )
      ,);
  }
}
