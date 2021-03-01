import 'package:http/http.dart' as http;
import 'package:harry_potter/error.dart';
import 'package:shared_preferences/shared_preferences.dart';
class GetCharacter
{
  String name;
  String spelldata;
  String housedata;
  Future<void> getCharacter()async {
    //final response;

      final response = await http.get(
          'https://www.potterapi.com/v1/characters/?key=\$2a\$10\$9HJBjAYInaZPSY0bs3sKc.nGyF0473r3OI5mCYBTQOeIj40FlDhhW');
      if (response.statusCode == 200) {
        String data = response.body;
        name=data;
        _save('char', name);
      }
      else {
        err();
        print('Not found');
      }
    }

  Future<void> getSpellData()async {
    final response = await http.get(
        'https://www.potterapi.com/v1/spells/?key=\$2a\$10\$9HJBjAYInaZPSY0bs3sKc.nGyF0473r3OI5mCYBTQOeIj40FlDhhW');
    if (response.statusCode == 200) {
      String data = response.body;
      //String temp = json.decode(data)[0]['name'];
//String img = jsonDecode(data)['manga'][0]['i'];
//print(temp);
//print(img);
      //print(data);
      spelldata=data;
      _save('spel', spelldata);
    }
    else {
      print('Not found');
    }
  }
  Future<void> getHouse()async {
    final response = await http.get(
        'https://www.potterapi.com/v1/houses/?key=\$2a\$10\$9HJBjAYInaZPSY0bs3sKc.nGyF0473r3OI5mCYBTQOeIj40FlDhhW');
    if (response.statusCode == 200) {
      String data = response.body;
      //String temp = json.decode(data)[0]['name'];
//String img = jsonDecode(data)['manga'][0]['i'];
//print(temp);
//print(img);
      //print(data);
      housedata=data;
      _save('hous', housedata);
    }
    else {
      print('Not found');
    }
  }

  }

_save(k,v) async {
  final prefs = await SharedPreferences.getInstance();
  final key = k;
  final value = v;
  prefs.setString(key, value);
}
