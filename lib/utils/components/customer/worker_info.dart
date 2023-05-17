import 'package:faz3a_application/utils/app_colors.dart';
import 'package:faz3a_application/views/customer/booking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';

class WorkerInfo extends StatefulWidget {
 final String name;
 final String service;
 final String location;
 final double rating;


 const WorkerInfo({Key? key,required this.name,required this.service,required this.location,required this.rating,}) : super(key: key);

  @override
  State<WorkerInfo> createState() => _WorkerInfoState();
}

class _WorkerInfoState extends State<WorkerInfo> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors().primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(3),
          ),
        ),

        width: 35.7.w,
        height: 25.6.h,
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage:AssetImage('assets/images/man1.png'),
              radius: 34.sp,
            ),
            SizedBox(height: 0.7.h,),
            Text(widget.name,style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor3,fontSize: 19.5.sp),)
            ,Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.work_outline,color: AppColors().primaryColor3,)
                ,SizedBox(width: 1.w
                  ,) ,Text(widget.service,style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor3,fontSize: 11.5.sp),),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on_sharp,color: AppColors().primaryColor3,)
                ,SizedBox(width: 1.w
                  ,) ,Text(widget.location,style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor3,fontSize: 11.5.sp),),
              ],
            ),
            RatingBarIndicator(
              rating: widget.rating,
              itemBuilder: (context, index) => Icon(
                Icons.star,
                color: AppColors().primaryColor3,
              ),
              itemCount: 5,
              itemSize: 2.7.h,
              direction: Axis.horizontal,
            ),
          ],
        ),
      ),
      onTap: (){

          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) =>BookingPage()
              ));
      },
    );
  }
}
