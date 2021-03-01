import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:harry_potter/spellresult.dart';
class SpellScreen extends StatefulWidget {
  SpellScreen({this.spelldata});
  final spelldata;
  @override
  _SpellScreenState createState() => _SpellScreenState();
}

class _SpellScreenState extends State<SpellScreen> {

  List<String> s = List<String>();
  List<String> k = List<String>();

  List suggestions=[];
  List suggestionk=[];
int ins=0;
String abc;
  void initState() {
    super.initState();
    abc=widget.spelldata;

    update(widget.spelldata);

  }




  void update(datas) {



    for (int no = 0; no < 151; no++) {
      s.add(jsonDecode(datas)[no]['spell'] ?? "Not Applicable");
      k.add(jsonDecode(datas)[no]['_id'] ?? "Not Applicable");

    }
  }
  @override
  Widget build(BuildContext context) {
    List temps=[];
    List tempk=[];

    return Wrap(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
            prefixIcon:  Icon(Icons.search,color: Colors.white,),
              contentPadding: EdgeInsets.all(10),
              hintText: 'Search By Spell Name'
          ),
          onChanged: (String) {
            setState(() {
              suggestions = s.where((u) =>
                  u.toLowerCase().startsWith(String.toLowerCase()))
                  .toList();

              for (int j = 0; j < suggestions.length; j++) {
                temps.add(
                    s[s.indexOf(suggestions[j])]);
                tempk.add(k[s.indexOf(
                    suggestions[j])]);

              }
              suggestions = temps;
              suggestionk = tempk;

            });
          },

        ),
        ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 500),
            child: Scrollbar(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: suggestions.length == 0 ? s
                      .length : suggestions.length,
                  itemBuilder: (context, index) {
                    return
                      FlatButton(

                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return spellresult(clickedspell: suggestions.length == 0
                                  ? s[index]
                                  : suggestions[index], index: suggestions.length == 0
                                  ? k[index]
                                  : suggestionk[index], wholedata: widget.spelldata,);
                            }));
                          },

                          child: Card(
                            margin: EdgeInsets.only( top:10, bottom:10),
                              elevation: 8,


                              color: Colors.grey[900],
                              child: ListTile(
                              leading: Icon(Icons.flash_on,color: Colors.yellow,),

                                title: Text(suggestions.length == 0
                                    ? s[index].toUpperCase()
                                    :
                                suggestions[index].toUpperCase(),
                                  style: TextStyle(

                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.5,
                                    fontFamily: "Girassol"
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),




                              )
                          )
                      );
                  }
              ),
            )

        )
      ],

    );
  }
}
