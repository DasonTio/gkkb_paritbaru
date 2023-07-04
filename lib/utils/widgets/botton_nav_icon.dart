import 'package:flutter/material.dart';

class BottomNavIcon extends StatelessWidget {
  BottomNavIcon({Key? key, required this.icon, this.label}) : super(key: key);

  String icon;
  String? label;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset('assets/icons/$icon'),
          label != null ? Text(label!) : const SizedBox()
        ],
      ),
    );
  }
}
