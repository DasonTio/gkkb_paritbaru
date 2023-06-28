import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.text,
    required this.func,
    this.isExpanded,
  }) : super(key: key);

  final String text;
  final Function func;
  final bool? isExpanded;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: accentColor,
        padding: EdgeInsets.all(12.0)
      ),
      onPressed: () => func,
      child: Text(
        text,
        style: regularFont.copyWith(
          fontSize: SizeConfig.blockWidth * 4,
        ),
      ),
    );
  }
}
