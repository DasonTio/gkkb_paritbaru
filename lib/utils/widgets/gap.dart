import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';

class Gap extends StatelessWidget {
  const Gap({ Key? key, this.length = 1 }) : super(key: key);

  final int length;
  @override
  Widget build(BuildContext context){
    SizeConfig(context);
    return SizedBox(
      height: SizeConfig.blockHeight * length,
    );
  }
}