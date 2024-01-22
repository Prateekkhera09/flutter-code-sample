import 'package:base_project/features/chat_page/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  ChatController controller = Get.put(ChatController());
  Gender genderIs = Gender.male;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("chat".tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            ListTile(
              title: Text('male'.tr),
              leading: Radio(
                value: Gender.male,
                groupValue: genderIs,
                onChanged: (value) {
                  setState(() {
                    genderIs = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('female'.tr),
              leading: Radio(
                value: Gender.female,
                groupValue: genderIs,
                onChanged: (value) {
                  setState(() {
                    genderIs = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('other'.tr),
              leading: Radio(
                value: Gender.other,
                groupValue: genderIs,
                onChanged: (value) {
                  setState(() {
                    genderIs = value!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum Gender { male, female, other }
