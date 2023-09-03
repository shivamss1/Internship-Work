import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smartradio/core/app_export.dart';
import 'package:smartradio/models/Login_model.dart';
class NormalLogin {
  Future<Normalloginmodel> nlogin(String email, String password) async {
    Normalloginmodel? normalLogin;
    String url=Fixdata.Email_password_login_api;
    http.Response response = await http.post(Uri.parse(url),body:{
      "email":email,
      "password":password
    });
    var jsonResponse=json.decode(response.body);
    print(jsonResponse);
    normalLogin=Normalloginmodel.fromJson(jsonResponse);
    return normalLogin;
  }
}