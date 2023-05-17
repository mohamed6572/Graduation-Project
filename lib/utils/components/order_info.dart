import 'package:faz3a_application/utils/app_colors.dart';
import 'package:faz3a_application/utils/components/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OrderInfo extends StatelessWidget {
  final String name;
  final String city;
  final String number;
  final String date;
  const OrderInfo({Key? key,required this.name,required this.city,required this.number,required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 17.h,
      width: 85.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors().primaryColor3
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(CupertinoIcons.profile_circled,color: AppColors().primaryColor,size: 24.sp,),
                    SizedBox(width: 1.w,),
                    Text(name,style: TextStyle(color: AppColors().primaryColor,fontWeight: FontWeight.bold,fontSize: 15.sp),)
                  ],
                ),SizedBox(height: .3.h,),
                Row(
                  children: [
                    Icon(CupertinoIcons.location_solid,color: AppColors().primaryColor,size: 24.sp,),
                    SizedBox(width: 1.w,),
                    Text(city,style: TextStyle(color: AppColors().primaryColor,fontWeight: FontWeight.bold,fontSize: 15.sp),)
                  ],
                ),SizedBox(height: .3.h,),
                Row(
                  children: [
                    Icon(CupertinoIcons.phone_circle,color: AppColors().primaryColor,size: 24.sp,),
                    SizedBox(width: 1.w,),
                    Text(number,style: TextStyle(color: AppColors().primaryColor,fontWeight: FontWeight.bold,fontSize: 15.sp),)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.date_range_outlined,color: AppColors().primaryColor,size: 24.sp,),
                    SizedBox(width: 1.w,),
                    Text(date,style: TextStyle(color: AppColors().primaryColor,fontWeight: FontWeight.bold,fontSize: 15.sp),)
                  ],
                )
              ],
            ),
          ),SizedBox(width: 13.w,),
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(buttonColor: AppColors().primaryColor2, buttonText: 'Delete', buttonHeight: 11, buttonWidth: 15, textButtonColor: AppColors().primaryColor3)
            ],
          )
        ],
      ),
    );
  }
}
