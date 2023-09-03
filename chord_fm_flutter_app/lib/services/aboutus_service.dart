import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:smartradio/core/app_export.dart';
import 'package:smartradio/models/about_model.dart';

class AboutUsService {
  Future<List<AboutUsModel>> abouts() async{
    var url=Uri.parse(Fixdata.About_us_api);
    var res=await http.get(url);
    var data=jsonDecode(res.body);
    List<AboutUsModel> aboutt=[];
    if(res.statusCode==200){
      aboutt.add(AboutUsModel.fromJson(data));
      return aboutt;
    }
  return aboutt;
}
}