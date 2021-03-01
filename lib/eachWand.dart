import 'package:flutter/material.dart';

class eachwand extends StatelessWidget {
  eachwand({this.index,this.wand,this.size,this.owner,this.made});
  final index;
  final wand;
  final size;
  final made;
  final owner;


  @override
  Widget build(BuildContext context) {
    return  ExpansionTile(

      title: Text(wand[index],style: TextStyle(fontFamily: "Girassol",fontSize: 22,letterSpacing: 1.5),
      ),
      subtitle:Text(size[index],style: TextStyle(fontFamily: "Girassol",fontSize: 18,letterSpacing: 1.5)) ,
      leading: Icon(Icons.map,color: Colors.brown,),
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Text('Owner : ${owner[index]}',style: TextStyle(fontFamily: "Girassol",fontSize: 19,letterSpacing: 1.5),),
            SizedBox(height: 5,),
            Text('Made Of : ${made[index]}',style: TextStyle(fontFamily: "Girassol",fontSize: 19,letterSpacing: 1.5),),
            SizedBox(height: 7,),

          ],
        )
      ],
    );
  }
}
