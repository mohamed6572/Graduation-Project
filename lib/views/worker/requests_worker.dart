import 'package:faz3a_application/utils/app_colors.dart';
import 'package:faz3a_application/utils/components/button.dart';
import 'package:faz3a_application/utils/components/worker/request_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RequestsHomePage extends StatelessWidget {
  const RequestsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Your Requests',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor,fontSize: 20.5.sp),),
               SizedBox(width: 2.w,),
                Image(image: AssetImage('assets/images/quote-request.png'),height: 34.sp,)
                ],
              ),SizedBox(height: 2.h,),
            RequestInfo(name: "Ahmad Ali", city: "Amman", number: "0799388212",date: "22/5/2023",),
            SizedBox(height: 2.h,),
              RequestInfo(name: "Ahmad Ali", city: "Amman", number: "0799388212",date: "22/5/2023"),

            ],
          ),
        ),
      ),
    );
  }
}
