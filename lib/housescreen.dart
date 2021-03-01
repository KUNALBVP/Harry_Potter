import 'package:flutter/material.dart';
import 'package:harry_potter/eachhouse.dart';
class houses extends StatefulWidget {
  houses({this.housedata});
  String housedata;
  @override
  _housesState createState() => _housesState();
}

class _housesState extends State<houses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Scrollbar(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Container(
              height: 250,
              child: Row(
                children: <Widget>[
                  Expanded(
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
                          return eachhouse(keys: 0,data: widget.housedata,);
                        }));
                      },
                      child: Column(

                        children: <Widget>[
                          Expanded(
                            flex:11,
                            child: Container(
                                margin: EdgeInsets.fromLTRB(0, 7, 0, 5),
                                child :FadeInImage.assetNetwork(image:'https://cdn.europosters.eu/image/750/metal-tin-sign/harry-potter-gryffindor-i72420.jpg'
                                  ,placeholder: 'assets/loading.gif')
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            flex: 2,
                            child: Text('Gryffindor', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5,fontSize:20,fontFamily: 'Girassol'),),
                          )

                        ],
                      ),
                    ),

                  )
              ),
                  Expanded(
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
                              return eachhouse(keys: 1,data: widget.housedata,);
                            }));
                          },
                          child: Column(

                            children: <Widget>[
                              Expanded(
                                flex:11,
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 7, 0, 5),
                                    child :FadeInImage.assetNetwork(image:'https://images-na.ssl-images-amazon.com/images/I/61X%2BJxzSnfL._AC_SX522_.jpg'
                                      ,placeholder: 'assets/loading.gif',)
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                flex: 2,
                                child: Text('Ravenclaw', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5,fontSize:20,fontFamily: 'Girassol'),),
                              )

                            ],
                          ),
                        ),

                      )
                  )
                ],
              ),
            ),
            Container(
              height: 250,
              child: Row(
                children: <Widget>[
                  Expanded(
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
                              return eachhouse(keys: 2,data: widget.housedata,);
                            }));
                          },
                          child: Column(

                            children: <Widget>[
                              Expanded(
                                flex:11,
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 7, 0, 5),
                                    child :ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: FadeInImage.assetNetwork(image:'https://i.pinimg.com/originals/1d/5e/77/1d5e77cff02ae6c9747e5f9a8d47b18b.jpg'
                                        ,placeholder: 'assets/loading.gif',
                                        
                                        ),
                                    )
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                flex: 2,
                                child: Text('Slytherin', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5,fontSize:20,fontFamily: 'Girassol'),),
                              )

                            ],
                          ),
                        ),

                      )
                  ),
                  Expanded(
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
                              return eachhouse(keys: 3,data: widget.housedata,);
                            }));
                          },
                          child: Column(

                            children: <Widget>[
                              Expanded(
                                flex:11,
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 7, 0, 5),
                                    child :FadeInImage.assetNetwork(image:'https://cdn.europosters.eu/image/750/metal-tin-sign/harry-potter-hufflepuff-i67993.jpg'
                                      ,placeholder: 'assets/loading.gif',)
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                flex: 2,
                                child: Text('Hufflepuff', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5,fontSize:20,fontFamily: 'Girassol'),),
                              )

                            ],
                          ),
                        ),

                      )
                  )
                ],
              ),
            ),
            SizedBox(height: 75,)
          ],
        ),
      ),
    );
  }
}
