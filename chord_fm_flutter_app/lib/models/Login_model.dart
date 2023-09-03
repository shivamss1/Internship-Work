// To parse this JSON data, do
//
//     final normalloginmodel = normalloginmodelFromJson(jsonString);

import 'dart:convert';

Normalloginmodel normalloginmodelFromJson(String str) => Normalloginmodel.fromJson(json.decode(str));

String normalloginmodelToJson(Normalloginmodel data) => json.encode(data.toJson());

class Normalloginmodel {
  Normalloginmodel({
     this.userId,
     this.emailId,
     this.password,
     this.createdAt,
  });

  int? userId;
  String? emailId;
  String? password;
  DateTime? createdAt;

  factory Normalloginmodel.fromJson(Map<String, dynamic> json) => Normalloginmodel(
    userId: json["userId"],
    emailId: json["emailId"],
    password: json["password"],
    createdAt: DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "emailId": emailId,
    "password": password,
    "createdAt": createdAt?.toIso8601String(),
  };
}
