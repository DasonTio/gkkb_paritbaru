import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';

class ContentHeader extends StatelessWidget {
  ContentHeader({Key? key, required this.text, this.color, this.size}) : super(key: key);

  final String text;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Text(
      text,
      style: boldFont.copyWith(
        fontSize: size ?? SizeConfig.blockWidth * 5,
        color: color ?? secondaryColor,
      ),
    );
  }
}
