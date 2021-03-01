import 'package:flutter/material.dart';
import 'package:harry_potter/LoadingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF054E43),
        scaffoldBackgroundColor: Color(0xFF030905,),

      ),
      home: LoadingScreen(),
    );
  }
}
//054C44 ligt