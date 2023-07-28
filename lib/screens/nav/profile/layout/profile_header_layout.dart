import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';
import 'package:gkkb_paritbaru/utils/widgets/content_header.dart';

class ProfileHeaderLayout extends StatefulWidget {
  const ProfileHeaderLayout({Key? key}) : super(key: key);

  @override
  _ProfileHeaderLayoutState createState() => _ProfileHeaderLayoutState();
}

class _ProfileHeaderLayoutState extends State<ProfileHeaderLayout> {
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Expanded(
      flex: 4,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth * 6),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ContentHeader(
            text: 'Dason',
            color: primaryColor,
          ),
          Text(
            'GSM',
            style: regularFont.copyWith(
              color: primaryColor,
              fontSize: SizeConfig.blockWidth * 4,
            ),
          ),
        ],
      ),
      )
    );
  }
}
