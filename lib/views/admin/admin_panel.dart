import 'package:faz3a_application/utils/app_colors.dart';
import 'package:faz3a_application/utils/components/admin/order_status.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
body: SingleChildScrollView(
  child:   Center(
    child: Column(

      children: [SizedBox(height: 3.h,),
        Text("ADMIN PANEL",style: TextStyle(color: AppColors().primaryColor,fontWeight: FontWeight.bold,fontSize: 22.sp),),
        SizedBox(height: 2.5.h,),
        OrderStatus(customer: "Ahmad ALI", worker: "Issa Saeed", status: "Approved"),SizedBox(height: 2.5.h,),
        OrderStatus(customer: "Mohammad ALI", worker: "Khalil Saeed", status: "rejected")

      ],
    ),
  ),
),
      ),
    );
  }
}
