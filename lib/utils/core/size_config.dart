import 'package:flutter/cupertino.dart';

class SizeConfig {
  static late MediaQueryData mediaQuery;
  static late double screenWidth;
  static late double screenHeight;
  static late double blockWidth;
  static late double blockHeight;

  SizeConfig(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;
    blockWidth = screenWidth / 100;
    blockHeight = screenHeight / 100;
  }
}
