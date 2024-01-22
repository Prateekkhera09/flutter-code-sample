import 'package:base_project/base_utils/button_rc.dart';
import 'package:base_project/base_utils/textfield_rc.dart';
import 'package:base_project/features/login_page/login_controller.dart';
import 'package:base_project/features/navigation_bar/navigation_page.dart';
import 'package:base_project/web_helpers/constraints.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginController controller = Get.put(LoginController());
  bool test = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldRC(
              "email".tr,
              controller.emailController,
              onChange: (s) {
                debugPrint(s);
              },
            ),
            height15,
            TextFieldRC(
              "password".tr,
              controller.emailController,
              onChange: (s) {
                debugPrint(s);
              },
            ),
            height15,
            ButtonRC('change_page'.tr, () => Get.to(() => const NavigationPage()))
          ],
        ),
      ),
    );
  }
}
