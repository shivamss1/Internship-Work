// To parse this JSON data, do
//
//     final aboutUsModel = aboutUsModelFromJson(jsonString);

import 'dart:convert';

AboutUsModel aboutUsModelFromJson(String str) => AboutUsModel.fromJson(json.decode(str));

String aboutUsModelToJson(AboutUsModel data) => json.encode(data.toJson());

class AboutUsModel {
  AboutUsModel( {
     this.appTitle="",
     this.author="",
     this.description="",
     this.appVersion="",
     this.contact="",
     this.email="",
     this.website="",
     this.developedBy='',
     this.appLogo="",

  });

  String? appTitle;
  String? author;
  String? description;
  String? appVersion;
  String? contact;
  String? email;
  String? website;
  String? developedBy;
  String? appLogo;


  factory AboutUsModel.fromJson(Map<String, dynamic> json) => AboutUsModel(
    appTitle: json["appTitle"],
    author: json["author"],
    description: json["description"],
    appVersion: json["appVersion"],
    contact: json["contact"],
    email: json["email"],
    website: json["website"],
    developedBy: json["developedBy"],
    appLogo: json["appLogo"],

  );

  Map<String, dynamic> toJson() => {
    "appTitle": appTitle,
    "author": author,
    "description": description,
    "appVersion": appVersion,
    "contact": contact,
    "email": email,
    "website": website,
    "developedBy": developedBy,
    "appLogo": appLogo,
  };
}


