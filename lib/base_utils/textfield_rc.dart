import 'package:base_project/global_utils/colours.dart';
import 'package:flutter/material.dart';

class TextFieldRC extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType inputType;
  final bool isEnable, passwordShowHide;
  final int minLines;
  final Color textColor;
  final Function(String) onChange;

  const TextFieldRC(this.label, this.controller,
      {super.key,
      this.inputType = TextInputType.text,
      this.isEnable = true,
      this.minLines = 1,
      this.passwordShowHide = false,
      this.textColor = Colors.black87,
      required this.onChange});

  @override
  _TextFieldRCState createState() => _TextFieldRCState();
}

class _TextFieldRCState extends State<TextFieldRC> {
  bool secure = true;

  @override
  void initState() {
    secure = widget.passwordShowHide;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27.0),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.2, 0.3), //(x,y)
            blurRadius: 5.0,
          ),
        ],
      ),
      child: TextField(
        keyboardType: widget.inputType,
        obscureText: secure,
        autofocus: false,
        onChanged: widget.onChange,
        minLines: widget.minLines,
        maxLines: widget.minLines,
        enabled: widget.isEnable,
        cursorColor: Colours.primary,
        style: TextStyle(fontSize: 15.0, color: widget.textColor),
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.label.toString(),
          contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          focusColor: Colours.primary,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          suffixIcon: !widget.passwordShowHide
              ? null
              : !secure
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          secure = !secure;
                        });
                      },
                      icon:
                          const Icon(Icons.visibility_off, size: 15, color: Colors.grey),
                    )
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          secure = !secure;
                        });
                      },
                      icon: const Icon(Icons.visibility, size: 15, color: Colors.grey),
                    ),
        ),
      ),
    );
  }
}
