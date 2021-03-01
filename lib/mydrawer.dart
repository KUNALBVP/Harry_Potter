import 'package:flutter/material.dart';
import 'package:harry_potter/developer.dart';
import 'package:harry_potter/aboutapp.dart';
class draw extends StatefulWidget {
  @override
  _drawState createState() => _drawState();
}

class _drawState extends State<draw> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children:  <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF054E43),
            ),
            child: Center(
              child: Text(
                'WIKI  POTTER',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Girassol',
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          FlatButton(

            child: ListTile(
              leading: Icon(Icons.message),
              title: Text('About the App'),
              
            ),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)
              {
                return abou();
              }));
            },
          ),
          FlatButton(
    onPressed: (){
    Navigator.push(context,MaterialPageRoute(builder: (context)
    {
    return dev();
    }));
    },
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Developer'),
            ),
          ),

        ],
      ),
    );
  }
}
