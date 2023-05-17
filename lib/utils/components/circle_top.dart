import 'package:faz3a_application/utils/components/button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


import '../app_colors.dart';

class CircularTop extends StatefulWidget {
  const CircularTop({Key? key}) : super(key: key);

  @override
  State<CircularTop> createState() => _CircularTopState();
}

class _CircularTopState extends State<CircularTop> {
  // final user =FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.h),
                bottomRight: Radius.circular(8.h)),
            color: AppColors().primaryColor),
        width: 100.w,
        height: 16.5.h,
      ),
      Positioned(
          bottom: .1.h,
          child: Button(
            buttonColor: AppColors().primaryColor3,
            buttonText: "Logout",
            buttonHeight: 12,
            buttonWidth: 7,
            textButtonColor: AppColors().primaryColor,
            onPressed: () {

              }


          )),
      Positioned(
          bottom: 8.1.h,
          child: Text('ISSA ALI',
              style: TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white))),
      Positioned(
          bottom: 5.5.h,
          child: Text("Email@email.com",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70))),
    ]);
  }
}
