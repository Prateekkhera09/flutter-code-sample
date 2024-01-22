import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils {
  static errorMessage(message) {
    return Get.snackbar('title', message, snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.tealAccent);
  }

  static alertDialog() {
    return Get.defaultDialog(
      radius: 10.0,
      contentPadding: const EdgeInsets.all(20.0),
      title: 'title',
      middleText: 'content',
      textConfirm: 'Okay',
      confirm: OutlinedButton.icon(
        onPressed: () => Get.back(),
        icon: const Icon(Icons.check, color: Colors.blue),
        label: const Text('Okay', style: TextStyle(color: Colors.blue)),
      ),
      cancel: OutlinedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.access_alarm),
        label: const Text("teddst"),
      ),
    );
  }
}
