import 'package:base_project/global_utils/utils.dart';
import 'package:get/get.dart';

class BasicOptionsController extends GetxController {
  final count = 0.obs;

  alertDialog() => Utils.alertDialog();

  increment() => count.value++;

  snackBar() => Utils.errorMessage("Test");
}
