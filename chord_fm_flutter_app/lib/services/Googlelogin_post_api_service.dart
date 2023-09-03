import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:smartradio/core/app_export.dart';
import 'package:smartradio/models/Google_login_model.dart';
class GoogleLoginApi {
  Future<Googlemodel> loginData(String email, String name, String image) async {
    Googlemodel? googlesignin;
    String url = Fixdata.Google_sigin_api;
    http.Response response1 = await http.post(Uri.parse(url),body:{
      "name":name,
      "email":email,
      "image":image,
    });
    var jsonResponse=json.decode(response1.body);
    print(jsonResponse);
    googlesignin=Googlemodel.fromJson(jsonResponse);
    return googlesignin;
  }
}