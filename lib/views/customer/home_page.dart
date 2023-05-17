import 'package:faz3a_application/utils/app_colors.dart';
import 'package:faz3a_application/utils/components/worker/service_tab.dart';
import 'package:faz3a_application/views/customer/services_types/ac.dart';
import 'package:faz3a_application/views/customer/services_types/carpenter.dart';
import 'package:faz3a_application/views/customer/services_types/electrician.dart';
import 'package:faz3a_application/views/customer/services_types/painter.dart';
import 'package:faz3a_application/views/customer/services_types/pest.dart';
import 'package:faz3a_application/views/customer/services_types/pest_control.dart';
import 'package:faz3a_application/views/customer/services_types/smith.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Colors.orangeAccent,
                AppColors().primaryColor3
              ])),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 24,top: 24),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [Text('Welcome, Issa',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor,fontSize: 20.5.sp),)
                    ],
                  ),
                ),SizedBox(height: 4.h,),
                Text(' Top worker of this week',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor2,fontSize: 20.5.sp),),
               SizedBox(height: 1.h,), Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          color: AppColors().primaryColor),
                      width: 80.w,
                      height: 12.h,
                    ),
                    Positioned(
                      right: 4.w,
                      child:  CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 34.sp
                        ,

                          child: CircleAvatar(
                            backgroundImage:AssetImage('assets/images/man.png'),
                            radius: 34.sp,
                        ),
                      ), ),
Positioned
  (left: 3.w,
      top: 1.h,
      child: Column(
  children: [
      Text('Ahmad AlFayoumi',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor3,fontSize: 14.5.sp),)
  ,    Text('Carpenter',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor3,fontSize: 12.5.sp),)
,    Text('15 job in Week',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor3,fontSize: 13.5.sp),)
  ,  RatingBarIndicator(
        rating: 4.5,
        itemBuilder: (context, index) => Icon(
          Icons.star,
          color: AppColors().primaryColor3,
        ),
        itemCount: 5,
        itemSize: 2.7.h,
        direction: Axis.horizontal,
      ),
  ],
))
                  ],
                ),
         SizedBox(height: 4.h,),

         Text('Services',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor2,fontSize: 20.5.sp),)
,SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   ServiceTab(image: 'assets/images/plumber.png', job: 'plumber',
                     onTap: (){
                     Navigator.of(context).push(
                         MaterialPageRoute(
                             builder: (context) =>PlumberPage()
                         ));
                   },),
                    SizedBox(width: 29,),
          ServiceTab(image: 'assets/images/carpenter.png', job: 'carpenter',  onTap: (){
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) =>CarpenterPage()
                ));
          }),SizedBox(width: 29,),
                    ServiceTab(image: 'assets/images/service.png', job: 'AC service', onTap: (){
    Navigator.of(context).push(
    MaterialPageRoute(
    builder: (context) =>AcServicePage()
    ));})
                  ],
                ),SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ServiceTab(image: 'assets/images/pest-control.png', job: 'pest control',  onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) =>PestControlPage()
                          ));
                    }),
                    SizedBox(width: 29,),
                    ServiceTab(image: 'assets/images/mechanic.png', job: 'smith',  onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) =>SmithPage()
                          ));
                    }),SizedBox(width: 29,),
                    ServiceTab(image: 'assets/images/electrician.png', job: 'electrician',  onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) =>ElectricianPage()
                          ));
                    })
                  ],
                ),SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ServiceTab(image: 'assets/images/painter.png', job: 'painter',  onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) =>PainterPage()
                          ));
                    }),
                  ],
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
