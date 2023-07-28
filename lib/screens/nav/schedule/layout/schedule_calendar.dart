import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/screens/nav/schedule/layout/schedule_calendar_block.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ScheduleCalendar extends StatefulWidget {
  const ScheduleCalendar({Key? key}) : super(key: key);

  @override
  _ScheduleCalendarState createState() => _ScheduleCalendarState();
}

class _ScheduleCalendarState extends State<ScheduleCalendar> {
  ItemScrollController _scrollController = ItemScrollController();
  final date = DateTime.now();
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _scrollController.scrollTo(
        index: DateTime.now().day,
        alignment: 0.5,
        curve: Curves.easeInOut,
        duration: Duration(seconds: 1),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Container(
      height: SizeConfig.blockHeight * 5,
      child: ScrollablePositionedList.builder(
        itemScrollController: _scrollController,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: DateTime(date.year, date.month + 1, 0).day,
        itemBuilder: (_, index) => ScheduleCalendarBlock(index: index + 1),
      ),
    );
  }
}
