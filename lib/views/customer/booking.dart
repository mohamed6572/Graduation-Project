import 'package:faz3a_application/utils/app_colors.dart';
import 'package:faz3a_application/utils/components/button.dart';
import 'package:faz3a_application/views/customer/calender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  DateTime today =DateTime.now();
  void _onDaySelected(DateTime day , DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: AppColors().primaryColor,elevation: 0,
    title: Text('Booking'),centerTitle: true,
    ),
    body: Stack(
    alignment: Alignment.center,
    children: [

    Column(
    children: [
    Container(
    height: 200.0,
    color: AppColors().primaryColor,
    child: Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Positioned(
      top: 10.h,
      child:  CircleAvatar(
        backgroundColor: Colors.green,
        radius: 44.sp
        ,

        child: CircleAvatar(
          backgroundImage:AssetImage('assets/images/man1.png'),
          radius: 44.sp,
        ),
      ), ),
   SizedBox(height: 2.h,),
        Text('Issa Ali',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.sp),),
        IntrinsicHeight(
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Carpenter',style: TextStyle(color: Colors.white),),VerticalDivider(
              color: Colors.white60,
              thickness: 2,
            ),
              RatingBarIndicator(
                rating: 4.5,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: AppColors().primaryColor3,
                ),
                itemCount: 5,
                itemSize: 2.7.h,
                direction: Axis.horizontal,
              ),
            ],),

        )],)
    ),

    ),

    Expanded(
    child: Container(

    color: Colors.white,
    child: Center(
      child: SingleChildScrollView(
        child: Column(children: [
          Text('Book Date',style: TextStyle(color: AppColors().primaryColor,fontWeight: FontWeight.bold,fontSize: 20.sp),),
          SizedBox(height: 1.6.h,),
          SizedBox(
            height: 38.h,
              width: 80.w,
              child: TableCalendar(
                selectedDayPredicate:(day)=> isSameDay(day,today),
                availableGestures: AvailableGestures.all,
                rowHeight: 10.w,
                  headerStyle: HeaderStyle(formatButtonVisible:false,titleCentered: true ),
                  focusedDay: today, firstDay: DateTime.utc(2020,1,9), lastDay:  DateTime.utc(2030,1,9),
onDaySelected: _onDaySelected,
              )),
          Text("Selected Date "+today.toString().split(" ")[0],style: TextStyle(color: AppColors().primaryColor,fontWeight: FontWeight.bold,fontSize: 13.sp
          ),),
       SizedBox(height: 1.h,),
        Button(buttonColor: AppColors().primaryColor, buttonText: "Book Now", buttonHeight: 15, buttonWidth: 8, textButtonColor: AppColors().primaryColor3)

        ],),
      ),
    ),
    ))

    ])
    ])
    );
  }
}
