import 'package:flutter/material.dart';
import 'package:harry_potter/Networking.dart';
import 'package:harry_potter/homescreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    tryy();
  }

  getsharedchar() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String stringValue = prefs.getString('char');
    return stringValue;
  }
  getsharedspel() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String stringValue = prefs.getString('spel');
    return stringValue;
  }
  getsharedhous() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String stringValue = prefs.getString('hous');
    return stringValue;
  }
  void tryy() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringChar = await prefs.getString('char');
    String stringSpel = await prefs.getString('spel');
    String stringHous = await prefs.getString('hous');

    if(stringChar==null && stringHous==null && stringSpel==null)
    {
      GetCharacter get = GetCharacter();
      await get.getCharacter();

      await get.getSpellData();
      await get.getHouse();
      //print(get.name);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => homes(data: get.name,spell: get.spelldata,house:get.housedata))
      );
    }
    else{
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => homes(data: stringChar,spell: stringSpel,house:stringHous))
      );
    }
    /*Navigator.push(context,MaterialPageRoute(builder: (context)
    {
      return homes(data: get.name,);
    }));*/
    }
    Widget build(BuildContext context) {
      return Scaffold(

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: SpinKitFadingCircle(
                color: Colors.white,
                size: 100.0,
              ),

            ),
            SizedBox(height: 10,),
            Center(child: Column(
              children: <Widget>[
                Text('Welcome to Wiki Potter', style: TextStyle(fontFamily: 'Girassol',fontSize: 18,letterSpacing: 1.5,fontWeight: FontWeight.bold),),
                SizedBox(height: 50,),
                Text('Created By Aditya', style: TextStyle(fontFamily: 'Girassol',fontSize: 18,letterSpacing: 1.5,fontWeight: FontWeight.bold),),
              ],
            ),)

          ],
        ),
      );
    }
  }
