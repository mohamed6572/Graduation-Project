import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../app_colors.dart';

class CusTextField extends StatefulWidget {
  final String labelText;
  final bool isPassword;
  final TextEditingController? inputController;
  final validator;

   CusTextField({Key? key,required this.labelText,required this.isPassword,required this.inputController,required this.validator}) : super(key: key);

  @override
  State<CusTextField> createState() => _CusTextFieldState();
}

class _CusTextFieldState extends State<CusTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.h),
      child: TextFormField(
        validator:
          widget.validator,controller: widget.inputController,

        obscureText: widget.isPassword,
        style: TextStyle(color: AppColors().primaryColor),
        decoration: InputDecoration(filled: true, //<-- SEE HERE
            fillColor:AppColors().primaryColor3,
            border: OutlineInputBorder( borderRadius: new BorderRadius.circular(9.0),
              borderSide: new BorderSide( color:AppColors().primaryColor3,),),
            // labelText: (widget.labelText),
            hintText: widget.labelText,
          labelStyle: TextStyle(color: AppColors().primaryColor),
          suffixIcon: widget.isPassword? Icon(Icons.remove_red_eye_outlined,color: AppColors().primaryColor):Icon(Icons.email_outlined,color: AppColors().primaryColor,)
        ),

      ),
    );
  }
}
