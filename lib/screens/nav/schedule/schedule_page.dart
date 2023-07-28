import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/screens/nav/schedule/layout/schedule_calendar.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';
import 'package:gkkb_paritbaru/utils/widgets/content_header.dart';
import 'package:intl/intl.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(SizeConfig.blockWidth * 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContentHeader(text: "Sermon's Schedule"),
              SizedBox(height: SizeConfig.blockHeight),
              ScheduleCalendar(),
              SizedBox(height: SizeConfig.blockHeight),
              Expanded(
                child: Column(
                  children: [
                    Text(DateFormat("EEEEE, d MMMM y").format(DateTime.now())),
                    SizedBox(height: SizeConfig.blockHeight),                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
