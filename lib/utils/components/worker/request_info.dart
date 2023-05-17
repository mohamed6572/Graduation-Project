import 'package:faz3a_application/utils/app_colors.dart';
import 'package:faz3a_application/utils/components/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RequestInfo extends StatelessWidget {
  final String name;
  final String city;
  final String number;
  final String date;


  const RequestInfo({Key? key,required this.name,required this.city,required this.number,required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(color: Colors.orange[300],
          borderRadius: BorderRadius.circular(20)
      ),
      height: 18.9.h,
      width: 84.w,
      child: Padding(
        padding: const EdgeInsets.only(left: 30,top: 10),
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(CupertinoIcons.profile_circled,color: AppColors().primaryColor3,size: 24.sp,),
                    SizedBox(width: 1.w,),
                    Text(name,style: TextStyle(color: AppColors().primaryColor3,fontWeight: FontWeight.bold,fontSize: 15.sp),)
                  ],
                ),SizedBox(height: .3.h,),
                Row(
                  children: [
                    Icon(CupertinoIcons.location_solid,color: AppColors().primaryColor3,size: 24.sp,),
                    SizedBox(width: 1.w,),
                    Text(city,style: TextStyle(color: AppColors().primaryColor3,fontWeight: FontWeight.bold,fontSize: 15.sp),)
                  ],
                ),SizedBox(height: .3.h,),
                Row(
                  children: [
                    Icon(CupertinoIcons.phone_circle,color: AppColors().primaryColor3,size: 24.sp,),
                    SizedBox(width: 1.w,),
                    Text(number,style: TextStyle(color: AppColors().primaryColor3,fontWeight: FontWeight.bold,fontSize: 15.sp),)
                  ],
                ),SizedBox(height: .3.h,),
                Row(
                  children: [
                    Icon(Icons.date_range,color: AppColors().primaryColor3,size: 24.sp,),
                    SizedBox(width: 1.w,),
                    Text(date,style: TextStyle(color: AppColors().primaryColor3,fontWeight: FontWeight.bold,fontSize: 15.sp),)
                  ],
                )
              ],
            ),SizedBox(width: 5.w,),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(buttonColor: Colors.green, buttonText: "Approve", buttonHeight: 15, buttonWidth: 8, textButtonColor: AppColors().primaryColor3)
                ,   Button(buttonColor: AppColors().primaryColor2, buttonText: "Reject", buttonHeight: 15, buttonWidth: 8, textButtonColor: AppColors().primaryColor3)

              ],
            )
          ],
        ),
      ),
    );
  }
}
