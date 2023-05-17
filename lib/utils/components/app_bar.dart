import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../app_colors.dart';

class CusAppBar extends StatelessWidget {
  final String title;

  const CusAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return AppBar(


        elevation: 0,
        backgroundColor:AppColors().primaryColor,
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors().primaryColor3)),
        );
  }
}
