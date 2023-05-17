import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
 DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
height: 100,
        width: 100,
        child: TableCalendar(focusedDay: today, firstDay: DateTime.utc(2020,1,9), lastDay:  DateTime.utc(2030,1,9)),
        ));
  }
}
