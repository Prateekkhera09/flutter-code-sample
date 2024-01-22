import 'package:base_project/features/basic_options/basic_options.dart';
import 'package:base_project/features/chat_page/chat_page.dart';
import 'package:base_project/features/home_page/home_page.dart';
import 'package:base_project/features/settings_page/settings_page.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  final List screens = [
    const HomePage({"name": "Base project"}),
    const BasicOptions(),
    const ChatPage(),
    const SettingsPage()
  ].obs;
}
