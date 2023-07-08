import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/screens/nav/attendance/attendance_page.dart';
import 'package:gkkb_paritbaru/screens/nav/home/home_page.dart';
import 'package:gkkb_paritbaru/screens/nav/profile/profile_page.dart';
import 'package:gkkb_paritbaru/screens/nav/schedule/schedule_page.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';

class NavView extends StatefulWidget {
  const NavView({Key? key}) : super(key: key);

  @override
  _NavViewState createState() => _NavViewState();
}

class _NavViewState extends State<NavView> {
  int currentIndex = 0;

  PageController pageController = PageController();

  List<Widget> screens = [
    HomePage(),
    AttendancePage(),
    SchedulePage(),
    ProfilePage(),
  ];

  void pageViewOnChangeEvent(dynamic value){
    setState(() {
      currentIndex = value;
    });
  }

  void bottomNavigationIconOnTapEvent(dynamic value) {
    pageController.jumpToPage(value);
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: pageViewOnChangeEvent,
        children: screens,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.qr_code_scanner),
        backgroundColor: accentColor,
        onPressed: () {},
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          clipBehavior: Clip.none,
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockWidth * 1.5,
          ),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: primaryColor,
            onTap: bottomNavigationIconOnTapEvent,
            currentIndex: currentIndex,
            selectedItemColor: accentColor,
            unselectedItemColor: inactiveColor,
            selectedLabelStyle: regularFont.copyWith(
              fontSize: SizeConfig.blockWidth * 3,
            ),
            unselectedLabelStyle: regularFont,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: const[
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                label: 'Home',
                icon: Icon(Icons.home_outlined),
              ),
              BottomNavigationBarItem(
                label: 'Attendance',
                activeIcon: Icon(Icons.list),
                icon: Icon(Icons.list_outlined),
              ),
              BottomNavigationBarItem(
                label: 'Schedule',
                activeIcon: Icon(Icons.calendar_month),
                icon: Icon(Icons.calendar_month_outlined),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                activeIcon: Icon(Icons.person),
                icon: Icon(Icons.person_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
