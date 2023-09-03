import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smartradio/core/app_export.dart';
import 'package:smartradio/models/PhoneNumber_DataModel.dart';
class PhonePostApi{
  Future<PhoneNumberDataModel> phonedata(String phoneno,String name1,String emailId)async{
    PhoneNumberDataModel? _phonenumberdata;
    String url = Fixdata.Phone_number_login_api;
    http.Response response2 = await http.post(Uri.parse(url),body:{
      "name":name1,
      "email":emailId,
      "phoneNumber":phoneno,
    });
    var data=json.decode(response2.body);
    print(data);
    _phonenumberdata=PhoneNumberDataModel.fromJson(data);
    return _phonenumberdata;
  }
}