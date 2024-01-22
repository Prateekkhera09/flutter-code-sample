import 'package:base_project/features/login_page/login_page.dart';
import 'package:base_project/global_utils/app_translate.dart';
import 'package:base_project/global_utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    title: 'Flutter Demo',
    translations: AppTranslations(),
    locale: const Locale('en', 'US'),
    theme: Themes.light,
    themeMode: ThemeMode.system,
    debugShowCheckedModeBanner: false,
    darkTheme: Themes.dark,
    home: const LoginPage(),
  ));
}
