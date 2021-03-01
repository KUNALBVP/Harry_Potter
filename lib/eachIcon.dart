import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:harry_potter/resultpage.dart';
import 'package:transparent_image/transparent_image.dart';
class eachIcon extends StatelessWidget {
  eachIcon({this.name,  this.data, this.namearray,this.urls});
  final name;
  String data;
  List namearray;
  String urls;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex:1,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey[900],

              borderRadius: BorderRadius.all(
                Radius.circular(10.0),)
          ) ,

          child: FlatButton(

            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)
              {
                return result(xy: name,yz: namearray.indexOf(name),abc: data,);
              }));
            },
            child: Column(

              children: <Widget>[
                Expanded(
                  flex:11,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 7, 0, 5),
                    child :FadeInImage.assetNetwork(image:urls
                      ,placeholder: 'assets/loading.gif',)
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Text(name, style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.5),),
                )

              ],
            ),
          ),

        )
    );
  }
}