import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:harry_potter/searchChar.dart';
import 'package:harry_potter/eachIcon.dart';
import 'package:harry_potter/mydrawer.dart';
import 'package:harry_potter/wandscreen.dart';
import 'package:harry_potter/spellscreen.dart';
import 'package:harry_potter/housescreen.dart';
class homes extends StatefulWidget {
  homes({this.data,this.spell,this.house});
  final data;
  final spell;
  final house;
  @override
  _homesState createState() => _homesState();
}

class _homesState extends State<homes> {


  List<String> x = List<String>();
  List<String> y = List<String>();
  List<String> w = List<String>();
  List<String> a = List<String>();


  int _currentIndex=0;
String xs;
String wand;


  @override
  void initState(){
    super.initState();

    update(widget.data);
  }
  void update(datas) {

      for (int no = 0; no < 195; no++) {

        xs=jsonDecode(datas)[no]['name'] ;
        if(xs=="Tom Riddle"){
          xs="Lord Voldemort";
        }
        wand=jsonDecode(datas)[no]['wand'] ;
        if(wand!=null && wand!='unknown' ){
          w.add(wand);
          a.add(xs);
        }
        x.add(xs);
        y.add(jsonDecode(datas)[no]['_id'] ?? "Not Applicable");
      }

  }


  Widget build(BuildContext context) {
    //print(widget.data);

    Future<bool> _onBackPressed(){
      return showDialog(
          context: context,
        builder:(context)=>AlertDialog(

          title: Text("Do you really want to exit the App?",style: TextStyle(color: Colors.green,fontFamily: 'Girassol',fontWeight: FontWeight.bold,letterSpacing: 1),),
          actions: <Widget>[
            FlatButton(
              child: Text('No',style: TextStyle(color: Colors.white,fontFamily: 'Girassol',fontWeight: FontWeight.bold,letterSpacing: 1)) ,
              onPressed: ()=>Navigator.pop(context,false)

            ),
            FlatButton(
                child: Text('Yes',style: TextStyle(color: Colors.white,fontFamily: 'Girassol',fontWeight: FontWeight.bold,letterSpacing: 1)) ,
                onPressed: ()=>Navigator.pop(context,true)

            ),
          ],
        )
      );
    }
    return WillPopScope(
      onWillPop: _onBackPressed,

      child: DefaultTabController(
        length: 4,
        child: Scaffold(


          appBar: _currentIndex==0?AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: 'CHARACTERS',),
                Tab(text: 'WANDS'),
                Tab(text: 'SPELLS'),
                Tab(text:'HOUSES')

              ],
              isScrollable: true,
            ),
            title: Center(child: Text('WIKI POTTER',style: TextStyle(fontFamily: 'Girassol',letterSpacing: 1.5,fontWeight:FontWeight.bold,fontSize: 22))),

            leading: null,
            elevation: 2.0,
           // automaticallyImplyLeading: false,
            actions: <Widget>[
              IconButton(icon:Icon(Icons.search),onPressed:(){
                showSearch(context: context, delegate:DataSearch(charname: x, ide: y,totalinfo: widget.data), );
              }),

        ],
          ):null,
            drawer: draw(),
          body: TabBarView(
            children: <Widget>[
              Scrollbar(
                child: ListView(
                  //`physics: const ScrollPhysics(),
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: false,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Popular Characters' ,style:TextStyle(
                            color: Colors.white,
                            fontFamily: 'Girassol',
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            letterSpacing: 1.5
                        )),
                      ),
                    ),
                    Container(
                      //color: Colors.red,
                      height: 250,
                      child: Row(
                        children: <Widget>[

                          eachIcon(name: "Harry Potter",data:widget.data ,namearray: x,urls: 'https://images.ctfassets.net/usf1vwtuqyxm/3SQ3X2km8wkQIsQWa02yOY/8801d7055a3e99dae8e60f54bb4b1db8/HarryPotter_WB_F4_HarryPotterMidshot_Promo_080615_Port.jpg?w=914',),
                          eachIcon(name:"Hermione Granger",data:widget.data ,namearray: x,urls: 'https://vignette.wikia.nocookie.net/characters/images/a/a5/Latest_%2810%29.jpg/revision/latest?cb=20141230074301',),
                          //    eachIcon()

                        ],
                      ),
                    ),
                    Container(
                      //color: Colors.red,
                      height: 250,
                      child: Row(
                        children: <Widget>[

                          eachIcon(name: "Ronald Weasley",data:widget.data ,namearray: x,urls: 'https://vignette.wikia.nocookie.net/heroes-v-villains/images/5/56/Ron_Weasley_%28Scopatore%29.jpg/revision/latest?cb=20181004180359',),
                          eachIcon(name:"Albus Dumbledore",data:widget.data ,namearray: x,urls: 'https://i.pinimg.com/originals/da/b3/d1/dab3d1f464ee0488f6b765af61d3c65f.jpg',),
                          //    eachIcon()

                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      //color: Colors.red,
                      child: Row(
                        children: <Widget>[

                          eachIcon(name: "Severus Snape",data:widget.data ,namearray: x,urls: 'https://upload.wikimedia.org/wikipedia/en/thumb/b/b9/Ootp076.jpg/220px-Ootp076.jpg',),
                          eachIcon(name:"Lord Voldemort",data:widget.data ,namearray: x,urls: 'https://vignette.wikia.nocookie.net/hogwarts-life/images/6/6e/VoldemortHeadshot_DHP1.png/revision/latest?cb=20170128134158',),
                          //    eachIcon()

                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      //color: Colors.red,
                      child: Row(
                        children: <Widget>[

                          eachIcon(name: "Sirius Black",data:widget.data ,namearray: x,urls: 'https://therantingsofabookworm.files.wordpress.com/2016/07/f5110ad6f7c1f0942722d4aa316ad6d4.jpg?w=249&h=374',),
                          eachIcon(name:"Bellatrix Lestrange",data:widget.data ,namearray: x,urls: 'https://vignette.wikia.nocookie.net/villains/images/4/45/Bellatrix.jpg/revision/latest?cb=20170607100138',),
                          //    eachIcon()

                        ],
                      ),
                    ),

                  ],
                ),
              ),
              wandss(wandlist: w,namelist: a,)
              ,
              SpellScreen(spelldata: widget.spell,),
              houses(housedata: widget.house,)
            ],
          ),


        ),
      ),
    );
  }
}





