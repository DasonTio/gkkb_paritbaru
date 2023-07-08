import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';
import 'package:gkkb_paritbaru/utils/widgets/content_header.dart';

class HomeContentLayout extends StatefulWidget {
  const HomeContentLayout({Key? key}) : super(key: key);

  @override
  _HomeContentLayoutState createState() => _HomeContentLayoutState();
}

class _HomeContentLayoutState extends State<HomeContentLayout> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 12,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: primaryColor,
        ),
        padding: EdgeInsets.all(SizeConfig.blockWidth * 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContentHeader(text: 'Attendance List'),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'See All',
                    style: regularFont.copyWith(
                        color: accentColor,
                        fontSize: SizeConfig.blockWidth * 3.25),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Text(
                  "No data assigned yet",
                  style: regularFont.copyWith(color: inactiveColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
