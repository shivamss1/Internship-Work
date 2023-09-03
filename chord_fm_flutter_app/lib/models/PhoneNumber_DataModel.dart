// To parse this JSON data, do
//
//     final phoneNumberDataModel = phoneNumberDataModelFromJson(jsonString);

import 'dart:convert';

PhoneNumberDataModel phoneNumberDataModelFromJson(String str) => PhoneNumberDataModel.fromJson(json.decode(str));

String phoneNumberDataModelToJson(PhoneNumberDataModel data) => json.encode(data.toJson());

class PhoneNumberDataModel {
  PhoneNumberDataModel({
    required this.userId,
    required this.userName,
    required this.emailId,
    required this.password,
    required this.phoneNumber,
    required this.useReferral,
    required this.planName,
    required this.planDuration,
    required this.planStartDate,
    required this.planEndDate,
    required this.isSubscribe,
    required this.userType,
    required this.businessLimit,
    required this.profileImage,
    required this.createdAt,
  });

  int userId;
  String userName;
  String emailId;
  String password;
  int phoneNumber;
  String useReferral;
  String planName;
  String planDuration;
  String planStartDate;
  String planEndDate;
  bool isSubscribe;
  String userType;
  int businessLimit;
  String profileImage;
  DateTime createdAt;

  factory PhoneNumberDataModel.fromJson(Map<String, dynamic> json) => PhoneNumberDataModel(
    userId: json["userId"],
    userName: json["userName"],
    emailId: json["emailId"],
    password: json["password"],
    phoneNumber: json["phoneNumber"],
    useReferral: json["useReferral"],
    planName: json["planName"],
    planDuration: json["planDuration"],
    planStartDate: json["planStartDate"],
    planEndDate: json["planEndDate"],
    isSubscribe: json["isSubscribe"],
    userType: json["userType"],
    businessLimit: json["businessLimit"],
    profileImage: json["profileImage"],
    createdAt: DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "userName": userName,
    "emailId": emailId,
    "password": password,
    "phoneNumber": phoneNumber,
    "useReferral": useReferral,
    "planName": planName,
    "planDuration": planDuration,
    "planStartDate": planStartDate,
    "planEndDate": planEndDate,
    "isSubscribe": isSubscribe,
    "userType": userType,
    "businessLimit": businessLimit,
    "profileImage": profileImage,
    "createdAt": createdAt.toIso8601String(),
  };
}
