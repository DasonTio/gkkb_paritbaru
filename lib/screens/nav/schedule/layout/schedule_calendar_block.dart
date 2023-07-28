import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';

class ScheduleCalendarBlock extends StatelessWidget {
  ScheduleCalendarBlock({
    Key? key,
    required this.index,
  }) : super(key: key);

  final num index;

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    bool isToday = DateTime.now().day == index;

    return Container(
      decoration: BoxDecoration(
        color: isToday ? accentColor.withOpacity(0.25) : Colors.transparent,
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultBorderRadius),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.blockWidth * 3,
        vertical: SizeConfig.blockHeight
      ),
      child: Text(
        isToday ? "Today" : index.toString(),
        style: regularFont.copyWith(
          fontSize: SizeConfig.blockWidth * 3.5,
          color: isToday ? accentColor : secondaryColor,
        ),
      ),
    );
  }
}
