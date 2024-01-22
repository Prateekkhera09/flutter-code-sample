import 'package:flutter/material.dart';

class ButtonRC extends StatelessWidget {
  final String text;
  final Function() callBack;

  const ButtonRC(
    this.text,
    this.callBack, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: callBack, child: Text(text));
  }
}
