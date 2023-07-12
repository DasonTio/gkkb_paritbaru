import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';

class Loading extends StatelessWidget {
const Loading({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return CircularProgressIndicator(
      backgroundColor: accentColor.withOpacity(0.1),
      color: accentColor,
    );
  }
}