import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';

class PaginationButton extends StatelessWidget {
  const PaginationButton({Key? key, required this.func, required this.icon})
      : super(key: key);

  final IconData icon;
  final Function func;
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Ink(
      height: SizeConfig.blockWidth * 10,
      width: SizeConfig.blockWidth * 10,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 2.5),
        ),
        color: inactiveAccentColor,
      ),
      child: IconButton(
        onPressed: () => func(),
        icon: Icon(
          icon,
          size: SizeConfig.blockWidth * 5,
          color: primaryColor,
        ),
      ),
    );
  }
}
