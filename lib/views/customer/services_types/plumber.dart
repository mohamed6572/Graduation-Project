import 'package:faz3a_application/utils/app_colors.dart';
import 'package:faz3a_application/utils/components/customer/worker_info.dart';
import 'package:faz3a_application/views/customer/booking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';

class PlumberPage extends StatelessWidget {
  const PlumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(height: 2.5.h,),
              Text('Workers List',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor,fontSize: 26.5.sp),)
            ,SizedBox(height: 3.h,),  Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
            WorkerInfo( name: 'Issa Ali', service: 'plumber', location: 'Amman', rating: 4.5
            //   ,onTap: (){
            //   Navigator.of(context).push(
            //       MaterialPageRoute(
            //           builder: (context) =>BookingPage()
            //       ));
            //
            // },
            ),
                  SizedBox(width: 3.w,),
                  WorkerInfo(name: 'Issa Ali', service: 'plumber', location: 'Amman', rating: 4.5),

                ],),
              SizedBox(height: 2.h,)
              ,Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WorkerInfo(name: 'Issa Ali', service: 'plumber', location: 'Amman', rating: 4.5),
                  SizedBox(width: 3.w,),
                  WorkerInfo(name: 'Issa Ali', service: 'plumber', location: 'Amman', rating: 4.5),

                ],),
            ],
          ),
        ),
      ),
    );
  }
}
