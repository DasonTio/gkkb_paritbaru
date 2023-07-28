import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';
import 'package:gkkb_paritbaru/utils/widgets/content_header.dart';
import 'package:gkkb_paritbaru/utils/widgets/pagination_button.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(SizeConfig.blockWidth * 6),
          child: Column(
            children: [
              ContentHeader(text: ' Attendance Data'),
              StreamBuilder(builder: (context, snapshot) {
                return Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'No data assigned yet',
                      style: regularFont.copyWith(
                        color: inactiveColor
                      ),
                    ),
                  ),
                );
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PaginationButton(func: () {}, icon: Icons.arrow_back),
                  SizedBox(width: SizeConfig.blockWidth * 5),
                  Text(
                    '1',
                    style: regularFont.copyWith(),
                  ),
                  SizedBox(width: SizeConfig.blockWidth * 5),
                  PaginationButton(func: () {}, icon: Icons.arrow_forward),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
