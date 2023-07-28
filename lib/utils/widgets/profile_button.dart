import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key? key,
    required this.icon,
    required this.func,
    required this.label
  }) : super(key: key);

  final String label;
  final IconData icon;
  final Function func;
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return TextButton(
      onPressed: () => func(),
      style: TextButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: secondaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.blockHeight * 2,
          horizontal: SizeConfig.blockWidth * 4,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: SizeConfig.blockWidth * 5,
          ),
          SizedBox(width: SizeConfig.blockWidth * 4),
          Text(
            label,
            style: regularFont.copyWith(fontSize: SizeConfig.blockWidth * 4),
          ),
        ],
      ),
    );
  }
}
