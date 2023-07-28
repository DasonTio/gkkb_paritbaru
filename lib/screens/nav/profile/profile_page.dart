import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/screens/nav/profile/layout/profile_content_layout.dart';
import 'package:gkkb_paritbaru/screens/nav/profile/layout/profile_header_layout.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: profileBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            ProfileHeaderLayout(),
            ProfileContentLayout()
          ],
        ),
      ),
    );
  }
}