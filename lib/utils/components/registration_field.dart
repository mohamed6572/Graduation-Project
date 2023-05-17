import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../app_colors.dart';

class RegTextField extends StatefulWidget {
  final String labelText;
 final bool notMobileNumber;
 final bool numberInput;
 final bool isPassword;
 final TextEditingController? inputController;
  final validator;
  final int width;

  const RegTextField({Key? key,required this.labelText, required this.notMobileNumber,required this.numberInput,required this.isPassword,required this.validator, this.inputController,required this.width}) : super(key: key);

  @override
  State<RegTextField> createState() => _RegTextFieldState();
}

class _RegTextFieldState extends State<RegTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(
        width: widget.width.w,
        child: TextFormField(

          controller: widget.inputController,
          validator:widget.validator,
          obscureText: widget.isPassword,
          style: TextStyle(color: Colors.white),
          keyboardType:  widget.numberInput ? TextInputType.number : TextInputType.text,
          decoration: InputDecoration(

            filled: true, contentPadding:  EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
              fillColor: AppColors().primaryColor,
              border: OutlineInputBorder( borderRadius: new BorderRadius.circular(25.0),
                borderSide: new BorderSide( color: AppColors().primaryColor2,),),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Colors.white,
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color:AppColors().primaryColor3,
              ),
            ),
              labelText: widget.labelText,labelStyle: TextStyle(
                  color: Colors.white
              ),//todo : suffix color

              prefixText: widget.notMobileNumber? "":"+962",prefixStyle: TextStyle(color: Colors.white)
          ),
        ),
      ),
    );
  }
}
