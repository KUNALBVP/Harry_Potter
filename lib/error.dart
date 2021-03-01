import 'package:flutter/material.dart';

class err extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(25),
        height: 250,
        width: 350,
        child: Text('Error! Abey dobara try kr',style: TextStyle(fontFamily: "Girassol",fontSize: 20, letterSpacing: 1.5),),
      ),
    );
  }
}
