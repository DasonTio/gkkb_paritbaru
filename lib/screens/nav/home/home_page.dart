import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/screens/nav/home/layout/home_content_layout.dart';
import 'package:gkkb_paritbaru/screens/nav/home/layout/home_header_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      backgroundColor: navigationBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            HomeHeaderLayout(),
            HomeContentLayout(),
          ],
        ),
      ),
    );
  }
}
