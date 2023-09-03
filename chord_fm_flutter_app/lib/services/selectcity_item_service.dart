import 'dart:convert';
import 'package:smartradio/models/Countrymodel.dart';
import 'package:http/http.dart' as http;
class Ccountry{
  Future<List<Countrymodel1>> countryname() async{
    var url=Uri.parse("https://63f999dd897af748dcc0ac82.mockapi.io/api/v1/countries");
    var res= await http.get(url);
    var data=jsonDecode(res.body);
    List<Countrymodel1> countries=[];
    for(var i=0;i<data.length;i++){
      countries.add(Countrymodel1.fromJson(data[i]));
    }
    return countries;
  }
}