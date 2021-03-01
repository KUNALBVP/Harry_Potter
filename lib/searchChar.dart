import 'package:flutter/material.dart';
import 'package:harry_potter/resultpage.dart';
class DataSearch extends SearchDelegate<String> {
  DataSearch({this.charname, this.ide,this.totalinfo});

  List charname;
  List ide;
  String totalinfo;

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions

    return [IconButton(icon: Icon(Icons.clear), onPressed: () {
      query = "";
    },)
    ];
  }

  @override
  // TODO: implement keyboardType
  TextInputType get keyboardType => TextInputType.text;

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme.copyWith(
      textTheme: theme.textTheme.copyWith(
          title: theme.textTheme.title.copyWith(color: Colors.white)),
      primaryColor: theme.primaryColor,
      primaryIconTheme: theme.primaryIconTheme.copyWith(color: Colors.grey),
      primaryColorBrightness: Brightness.light,
      primaryTextTheme: theme.textTheme,
    );
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow,
      progress: transitionAnimation,


    ),

      onPressed: () {
        close(context, null);
      },);
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults

    return null;
  }
  @override
  String get searchFieldLabel => "Search Characters";
  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    String s = query.isNotEmpty
        ? query[0].toUpperCase() + query.substring(1)
        : "";

    final suggestionList = charname.where((p) => p.contains(s)).toList();
    return ListView.builder(
      itemBuilder: (context, index) =>
          ListTile(
              onTap: () {
                int ind = charname.indexOf(suggestionList[index]);

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return result(xy: suggestionList[index], yz: ind, abc: totalinfo,);
                }));
              },
              leading: Icon(Icons.person),
              title: Text(suggestionList[index])
          ),
      itemCount: suggestionList.length,
    );
  }
}
/*
RichText(
text: TextSpan(
text: suggestionList[index].substring(0,query.length),
style:TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
children: [
TextSpan(
text: suggestionList[index].substring(query.length),
style: TextStyle(color: Colors.grey)
)
]
),
),
*/
//query.isEmpty?0:suggestionList[index].indexOf(s)