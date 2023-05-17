import 'package:faz3a_application/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OrderStatus extends StatelessWidget {
  final String customer;
  final String worker;
  final String status;

  const OrderStatus({Key? key,required this.customer,required this.worker,required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 80.w,
      height: 15.h,
      decoration: BoxDecoration(color: AppColors().primaryColor,
          borderRadius: BorderRadius.circular(20)
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(customer,style: TextStyle(color: AppColors().primaryColor3,fontWeight: FontWeight.bold,fontSize: 15.sp),),
              SizedBox(width: 1.w,),
              Icon(Icons.arrow_circle_right_outlined,size: 22.sp,color: AppColors().primaryColor3,),SizedBox(width: 1.w,),
              Text(worker,style: TextStyle(color: AppColors().primaryColor3,fontWeight: FontWeight.bold,fontSize: 15.sp),),
            ],
          ),
          Text(status,style: TextStyle(color:status=="Approved"? Colors.green : Colors.red,fontWeight: FontWeight.bold,fontSize: 19.sp),),

        ],),

    );
  }
}
