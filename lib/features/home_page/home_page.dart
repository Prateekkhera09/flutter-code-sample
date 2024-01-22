import 'package:base_project/base_utils/button_rc.dart';
import 'package:base_project/features/chat_page/chat_page.dart';
import 'package:base_project/features/home_page/home_controller.dart';
import 'package:base_project/global_utils/colours.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  final Map<String, String> map;

  const HomePage(this.map, {Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = Get.put(HomeController());
  bool localeHebrew = false, switchTheme = Get.isDarkMode;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.map["name"]!),
            const SizedBox(height: 20),
            Text('questions'.tr),
            const SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'tell_us'.tr,
                  helperText: 'keep_short'.tr,
                  labelText: 'life_style'.tr,
                  labelStyle: TextStyle(color: !switchTheme ? Colours.darkButton : Colours.lightButton),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: !switchTheme ? Colours.darkButton : Colours.lightButton)),
                  prefixIcon: Icon(Icons.person, color: !switchTheme ? Colours.darkButton : Colours.lightButton),
                  prefixText: ' ',
                  suffixText: 'currency'.tr),
            ),
            const SizedBox(height: 20),
            Text("answer".tr),
            const SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: !switchTheme ? Colours.darkButton : Colours.lightButton)),
                hintText: 'tell_us'.tr,
                helperText: 'keep_short'.tr,
                labelText: 'life_style'.tr,
                labelStyle: TextStyle(color: !switchTheme ? Colours.darkButton : Colours.lightButton),
                prefixIcon: Icon(Icons.person, color: !switchTheme ? Colours.darkButton : Colours.lightButton),
                prefixText: ' ',
                suffixText: 'currency'.tr,
              ),
            ),
            Switch(
              value: switchTheme,
              onChanged: (value) {
                setState(() {
                  switchTheme = !switchTheme;
                  Get.changeThemeMode(switchTheme ? ThemeMode.dark : ThemeMode.light);
                });
              },
            ),
            const SizedBox(height: 10),
            ButtonRC('change_page'.tr, () => Get.to(() => const ChatPage()))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          localeHebrew = !localeHebrew;
          Get.updateLocale(localeHebrew ? const Locale('en', 'US') : const Locale('he', 'Hebrew'));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
