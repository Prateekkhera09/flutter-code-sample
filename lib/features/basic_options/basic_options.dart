import 'package:base_project/base_utils/button_rc.dart';
import 'package:base_project/features/basic_options/basic_option_controller.dart';
import 'package:base_project/features/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasicOptions extends StatefulWidget {
  const BasicOptions({Key? key}) : super(key: key);

  @override
  State<BasicOptions> createState() => _BasicOptionsState();
}

class _BasicOptionsState extends State<BasicOptions> {
  final BasicOptionsController controller = Get.put(BasicOptionsController());

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
          constraints: BoxConstraints(minHeight: Get.height, minWidth: Get.width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 200),
              Obx(() => Text('${controller.count.value}', style: Theme.of(context).textTheme.headline4)),
              const SizedBox(height: 50),
              ButtonRC("SnackBar", controller.snackBar),
              const SizedBox(height: 50),
              ButtonRC("Show Alert", controller.alertDialog),
              const SizedBox(height: 50),
              ElevatedButton(onPressed: controller.increment, child: const Text('Increment')),
              const SizedBox(height: 50),
              ElevatedButton(onPressed: controller.increment, child: const Text('Show Loader')),
              const SizedBox(height: 10),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const HomePage({"name": "Base App"})),
        tooltip: 'Increment',
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.add),
      ),
    );
  }
}
