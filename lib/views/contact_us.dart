import 'package:contactus/contactus.dart';
import 'package:faz3a_application/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().primaryColor,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('FAZ3A',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor3,fontSize: 30.5.sp))
             , Divider(thickness: 1.9,color: Colors.grey,endIndent: 7.w,indent: 7.w,),
              Container(
                width: 90.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: AppColors().primaryColor3,
                    borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
                ),
child: Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Icon(Icons.link_outlined,size: 30.sp,color: AppColors().primaryColor,),SizedBox(width: 2.w,),
  Text('WWW.FAZ3A.COM',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor,fontSize: 20.5.sp))

],),
              ),SizedBox(height: 1.5.h,),
              Container(
                width: 90.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: AppColors().primaryColor3,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone,size: 30.sp,color: AppColors().primaryColor,),SizedBox(width: 2.w,),
                    Text('+962799388212',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor,fontSize: 20.5.sp))

                  ],),
              ),SizedBox(height: 1.5.h,),
              Container(
                width: 90.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: AppColors().primaryColor3,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.mail_outline,size: 30.sp,color: AppColors().primaryColor,),SizedBox(width: 2.w,),
                    Text('Faz3aApp@gmail.com',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor,fontSize: 20.5.sp))

                  ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
