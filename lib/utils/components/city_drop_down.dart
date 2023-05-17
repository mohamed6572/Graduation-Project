import 'package:flutter/material.dart';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:sizer/sizer.dart';

import '../app_colors.dart';

class CityDropDown extends StatefulWidget {
  final ValueChanged<String> onChange;
  final validator;
   CityDropDown({Key? key,required this.onChange,required this.validator}) : super(key: key);

  @override
  State<CityDropDown> createState() => _CityDropDownState();
}

class _CityDropDownState extends State<CityDropDown> {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text('Amman'),value: 'Amman'),
    DropdownMenuItem(child: Text('Zarqa'),value: 'Zarqa'),
    DropdownMenuItem(child: Text('Irbid'),value: 'Irbid'),
    DropdownMenuItem(child: Text('Aqaba'),value: 'Aqaba'),
    DropdownMenuItem(child: Text('As-salt'),value:'As-salt' ),
    DropdownMenuItem(child: Text('Madaba'),value:'Madaba' ),
    DropdownMenuItem(child: Text('Ma\'an'),value:'Ma\'an'),
    DropdownMenuItem(child: Text('Karak'),value:'Karak' ),
    DropdownMenuItem(child: Text('Tafilah'),value:'Tafilah' ),
    DropdownMenuItem(child: Text('Jerash'),value:'Jerash' ),
    DropdownMenuItem(child: Text('Mafraq'),value:'Mafraq' ),
    DropdownMenuItem(child: Text('Ajloun'),value: 'Ajloun'),

  ];

  String? selectedValu = null;
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
      'Select City',
      style: TextStyle(
        fontSize: 10.sp,
        color: AppColors().primaryColor,
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

          value: selectedValu,
          onChanged: (String? newValue) {
            setState(() {
              onChanged: (value) {
                setState(() {
selectedValu = value as String;
                  widget.onChange.call(value);
                });
              };
            });
          },
          items:menuItems,style: TextStyle(color: Colors.white), ),
    );
  }
}

