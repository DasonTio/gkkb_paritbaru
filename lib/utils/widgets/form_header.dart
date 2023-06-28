import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';

class FormHeader extends StatelessWidget {
  const FormHeader({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Text(
      text,
      style: regularFont.copyWith(
        fontSize: SizeConfig.blockWidth * 8,
      ),
    );
  }
}
