import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingsController extends GetxController {
  GetStorage getStorage = GetStorage();
  RxBool localeHebrew = false.obs, switchTheme = (Get.isDarkMode).obs;
  TextEditingController questionController = TextEditingController();
}
