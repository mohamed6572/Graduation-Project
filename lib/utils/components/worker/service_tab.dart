import 'package:faz3a_application/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ServiceTab extends StatefulWidget {
  final String image;
  final String job;
  final VoidCallback? onTap;
  const ServiceTab({Key? key,required this.image,required this.job,this.onTap,}) : super(key: key);

  @override
  State<ServiceTab> createState() => _ServiceTabState();
}

class _ServiceTabState extends State<ServiceTab> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors().primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(3),
          ),
        ),

        width: 21.7.w,
        height: 12.6.h,
        child: Column(
          children: [
            Image(image: AssetImage(widget.image),height: 51.sp
              ,),SizedBox(height: 0.7.h,),
            Text(widget.job,style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor3,fontSize: 11.5.sp),)
          ],
        ),
      ),
      onTap: () {
        if (widget.onTap != null) widget.onTap!.call();
      }
    );
  }
}
