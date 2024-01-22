import 'package:base_project/base_utils/button_rc.dart';
import 'package:base_project/features/chat_page/chat_page.dart';
import 'package:base_project/features/settings_page/settings_controller.dart';
import 'package:base_project/global_utils/colours.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  SettingsController controller = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text('questions'.tr),
            const SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'tell_us'.tr,
                  helperText: 'keep_short'.tr,
                  labelText: 'life_style'.tr,
                  labelStyle:
                      TextStyle(color: !controller.switchTheme.value ? Colours.darkButton : Colours.lightButton),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: !controller.switchTheme.value ? Colours.darkButton : Colours.lightButton)),
                  prefixIcon: Icon(Icons.person,
                      color: !controller.switchTheme.value ? Colours.darkButton : Colours.lightButton),
                  prefixText: ' ',
                  suffixText: 'currency'.tr),
            ),
            const SizedBox(height: 20),
            Text("answer".tr),
            const SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: !controller.switchTheme.value ? Colours.darkButton : Colours.lightButton)),
                hintText: 'tell_us'.tr,
                helperText: 'keep_short'.tr,
                labelText: 'life_style'.tr,
                labelStyle: TextStyle(color: !controller.switchTheme.value ? Colours.darkButton : Colours.lightButton),
                prefixIcon:
                    Icon(Icons.person, color: !controller.switchTheme.value ? Colours.darkButton : Colours.lightButton),
                prefixText: ' ',
                suffixText: 'currency'.tr,
              ),
            ),
            Switch(
              value: controller.switchTheme.value,
              onChanged: (value) {
                setState(() {
                  controller.switchTheme.value = !controller.switchTheme.value;
                  Get.changeThemeMode(controller.switchTheme.value ? ThemeMode.dark : ThemeMode.light);
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
          controller.localeHebrew.value = !controller.localeHebrew.value;
          Get.updateLocale(controller.localeHebrew.value ? const Locale('en', 'US') : const Locale('he', 'Hebrew'));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
