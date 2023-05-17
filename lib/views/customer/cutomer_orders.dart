import 'package:faz3a_application/utils/app_colors.dart';
import 'package:faz3a_application/utils/components/order_info.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomerOrders extends StatelessWidget {
  const CustomerOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors().primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Your Orders',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor3,fontSize: 20.5.sp),),
                SizedBox(width: 2.w,),
                Image(image: AssetImage('assets/images/mobile-application.png'),height: 34.sp,)
              ],
            ),SizedBox(height: 2.h,),
            OrderInfo(name: "Saeed ahmad", city: "Amman", number: "0799388212", date: "22/5/2023")
            , SizedBox(height: 2.h,),    OrderInfo(name: "Saeed ahmad", city: "Amman", number: "0799388212", date: "22/5/2023")

          ],),
        ),
      ),
    );;
  }
}
