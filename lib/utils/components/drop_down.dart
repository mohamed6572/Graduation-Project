import 'package:flutter/material.dart';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:sizer/sizer.dart';

import '../app_colors.dart';

class CusDropDown extends StatefulWidget {
  final ValueChanged<String> onChange;
  final validator;
  const CusDropDown({Key? key,required this.onChange,required this.validator}) : super(key: key);

  @override
  State<CusDropDown> createState() => _CusDropDownState();
}

class _CusDropDownState extends State<CusDropDown> {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text('Carpenter'),value: 'Carpenter'),
    DropdownMenuItem(child: Text('Smith'),value: 'Smith'),
    DropdownMenuItem(child: Text('plumber'),value: 'plumber'),
    DropdownMenuItem(child: Text('Electrician'),value: 'Electrician'),
    DropdownMenuItem(child: Text('painter'),value:'painter' ),
    DropdownMenuItem(child: Text('AC technician'),value:'AC technician' ),
    DropdownMenuItem(child: Text('pest control'),value:'pest control'),


  ];

  String? selectedValue = null;
  final _dropdownFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.1.h,
      width: 40.w
      ,
      child: DropdownButtonFormField(

          hint: Padding(
      padding: const EdgeInsets.only(left: 28),
        child: Text(
      'Select Service',
      style: TextStyle(
        fontSize: 10.sp,
        color: Colors.white,
      ),
        ),
      ),
          decoration: InputDecoration(

            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors().primaryColor3, width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors().primaryColor3, width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            filled: true,
            fillColor: AppColors().primaryColor,
          ),
          validator: widget.validator,
          dropdownColor: AppColors().primaryColor,

          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              onChanged: (value) {
                setState(() {
                  selectedValue = value as String;
                  widget.onChange.call(value);
                });
              };
            });
          },
          items:menuItems,style: TextStyle(color: Colors.white), ),
    );
  }
}

