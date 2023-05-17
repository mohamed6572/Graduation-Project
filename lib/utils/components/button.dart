import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Button extends StatefulWidget {
  final String buttonText;
  final buttonColor;
  final int buttonHeight;
  final int buttonWidth;
  final textButtonColor;
  final VoidCallback? onPressed;


  const Button(
      {Key? key,
        required this.buttonColor,
        required this.buttonText,
        required this.buttonHeight,
        required this.buttonWidth,
        this.onPressed,
        required this.textButtonColor,
      })
      : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (widget.onPressed != null) widget.onPressed!.call();

      },
      child: Text(
        widget.buttonText,
        style: TextStyle(fontSize: 13.sp, color: widget.textButtonColor),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(width: 1.5, color: widget.textButtonColor)),
        backgroundColor: widget.buttonColor,
        fixedSize: Size(widget.buttonHeight.h, widget.buttonWidth.w),
      ),
    );
  }
}
