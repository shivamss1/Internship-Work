import 'package:smartradio/core/app_export.dart';
import 'package:smartradio/models/languages_model.dart';
import 'package:flutter/material.dart';

class LanguagesController extends GetxController {
  TextEditingController radiosearchbarController = TextEditingController();

  Rx<LanguagesModel> languagesModelObj = LanguagesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    radiosearchbarController.dispose();
  }
}
