import 'package:flutter/material.dart';
import 'package:harry_potter/eachWand.dart';
class wandss extends StatefulWidget {
  wandss({this.wandlist,this.namelist});
  final namelist;
  final wandlist;
  @override
  _wandssState createState() => _wandssState();
}

class _wandssState extends State<wandss> {



  List<String> wan = List<String>();
  List<String> mad = List<String>();
  List<String> sizes = List<String>();



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    method(widget.wandlist);
    made(widget.wandlist);
  }
  method(data){
    for( String e in data)
      {
        String demo = "Size : ";
        demo=demo + e.substring(e.indexOf(',')+1,e.lastIndexOf(',')-1)+ " Inches";
        sizes.add(demo);
        //e=e.substring(0,);
        int index=0;
        String m="";
        e.runes.forEach((int rune) {
          var character=new String.fromCharCode(rune);
          if(character==',')
          {
            index=1;
          }

          if(index==0)
            {

              m=m+character;

            }

        });
        m=m+" Wand";
        wan.add(m);

      }
  }
  made(data){
    for( String e in data)
    {
      int ind=e.lastIndexOf(',');
      ind=ind+2;
      e=e.substring(ind);
      mad.add(e);
    }
   // print(mad);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30,
              child: Center(child: Text('List of all wandS',style: TextStyle(fontFamily: 'Girassol',letterSpacing: 6,fontWeight:FontWeight.bold,fontSize: 22))),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  eachwand(index: 0,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                 eachwand(index: 1,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 2,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 3,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 4,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 5,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 6,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 7,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 8,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 9,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 10,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 11,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 12,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 13,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 14,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 15,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 16,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 17,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 18,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 19,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 20,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 21,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index:22,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 23,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 10,),
                  eachwand(index: 24,owner: widget.namelist,wand: wan,size: sizes,made: mad,),
                  SizedBox(height: 70,),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
