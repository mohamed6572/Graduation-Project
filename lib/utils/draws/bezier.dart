import 'dart:math';
import 'package:faz3a_application/utils/app_colors.dart';
import 'package:faz3a_application/utils/draws/clipper.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'clip_shadow.dart';

class BezierContainer extends StatelessWidget {
  const BezierContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 3.9,
      child: ClipShadow(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 8,
            blurRadius: 10,
            offset: const Offset(-6, 4), // changes position of shadow
          ),
        ],
        clipper: ClipPainter(),
        child: Container(
          height: 55.h,
          width: 100.w,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors().primaryColor,
                AppColors().primaryColor2,

              ],
            ),
          ),
        ),
      ),
    );
  }
}
