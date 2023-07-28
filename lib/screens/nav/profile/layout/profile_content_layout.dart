import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';
import 'package:gkkb_paritbaru/utils/widgets/profile_button.dart';

class ProfileContentLayout extends StatefulWidget {
  const ProfileContentLayout({Key? key}) : super(key: key);

  @override
  _ProfileContentLayoutState createState() => _ProfileContentLayoutState();
}

class _ProfileContentLayoutState extends State<ProfileContentLayout> {
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Expanded(
      flex: 14,
      child: Container(
        padding: EdgeInsets.all(SizeConfig.blockWidth * 6),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: primaryColor,
        ),
        child: Column(
          children: [
            ProfileButton(
              func: () {},
              icon: Icons.person,
              label: 'Edit Profile',
            ),
            SizedBox(height: SizeConfig.blockHeight * 0.5),
            const Divider(height: 2),
            SizedBox(height: SizeConfig.blockHeight * 0.5),
            ProfileButton(
              icon: Icons.key,
              func: () {},
              label: 'Change Password',
            ),
            SizedBox(height: SizeConfig.blockHeight * 0.5),
            const Divider(height: 2),
            SizedBox(height: SizeConfig.blockHeight * 0.5),
            ProfileButton(
              icon: Icons.logout,
              func: () {},
              label: 'Logout',
            ),
          ],
        ),
      ),
    );
  }
}
