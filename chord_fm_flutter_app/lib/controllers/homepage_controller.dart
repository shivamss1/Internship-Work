import 'package:smartradio/core/app_export.dart';
import 'package:flutter/material.dart';

import '../models/radiotile_item_model.dart';

class HomepageController extends GetxController {
  //RxBool auidoSheetVisibility = true.obs;
  TextEditingController radiosearchbarController = TextEditingController();
  TextEditingController languageSearchController = TextEditingController();

  Rx<List<RadioTileItemModel>> RadioTileItemModelObj = RxList.filled(
          14,
          RadioTileItemModel(
              name: "Nova", country: "Australia", language: "English"))
      .obs;
  Rx<List<RadioTileItemModel>> RadioTileItemModelRecentObj = RxList.filled(
          14, RadioTileItemModel(name: "Lotus FM", country: "South Africa"))
      .obs;

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
