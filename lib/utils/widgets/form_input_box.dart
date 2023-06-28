import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';

class FormInputBox extends StatefulWidget {
  const FormInputBox({
    Key? key,
    required this.controller,
    required this.text,
  }) : super(key: key);

  final String? text;
  final TextEditingController controller;

  @override
  _FormInputBoxState createState() => _FormInputBoxState();
}

class _FormInputBoxState extends State<FormInputBox> {
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 0,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: inactiveColor,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: secondaryColor,
          ),
        ),
        hintText: widget.text,
      ),
    );
  }
}
