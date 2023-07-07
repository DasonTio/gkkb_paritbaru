import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';

class BottomNavIcon extends StatelessWidget {
  BottomNavIcon({
    Key? key,
    required this.icon,
    required this.label,
    required this.initialIndex,
    required this.index,
  }) : super(key: key);

  double initialIndex;
  double index;
  String label;
  IconData icon;

  bool isActive(){
    return index == initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return TextButton(
      onPressed: () => {
        
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: inactiveColor,
          ),
          Text(
            label,
            style: regularFont.copyWith(
              fontSize: SizeConfig.blockWidth * 3,
              color: inactiveColor,
            ),
          ),
        ],
      ),
    );
  }
}
