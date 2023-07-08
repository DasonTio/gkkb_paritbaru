import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';
import 'package:gkkb_paritbaru/utils/widgets/button.dart';
import 'package:gkkb_paritbaru/utils/widgets/content_header.dart';

class HomeHeaderLayout extends StatefulWidget {
  const HomeHeaderLayout({Key? key}) : super(key: key);

  @override
  _HomeHeaderLayoutState createState() => _HomeHeaderLayoutState();
}

class _HomeHeaderLayoutState extends State<HomeHeaderLayout> {
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Expanded(
      flex: 6,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockWidth * 6,
          vertical: SizeConfig.blockHeight * 3,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ContentHeader(
              text: 'GKKB Parit Baru',
              color: accentColor,
              size: SizeConfig.blockWidth * 4.5,
            ),
            Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Good Afternoon,',
                      style: regularFont.copyWith(color: greyColor),
                    ),
                    Text(
                      'Saturday, 8 July 2023',
                      style: regularFont.copyWith(color: greyColor),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContentHeader(text: 'User'),
                    ContentHeader(text: '16:07 WIB')
                  ],
                )
              ],
            ),
            Button(text: 'Check In', func: (){}, isExpanded: true,)
          ],
        ),
      ),
    );
  }
}
