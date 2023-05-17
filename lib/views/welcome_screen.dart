import 'package:faz3a_application/utils/components/button.dart';
import 'package:faz3a_application/utils/app_colors.dart';
import 'package:faz3a_application/utils/draws/bezier.dart';
import 'package:faz3a_application/utils/fade.dart';
import 'package:faz3a_application/views/customer/customer_login.dart';
import 'package:faz3a_application/views/worker/worker_login.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType){

      return  Scaffold(
        backgroundColor: const Color(0xfff3f3f3),
        body: Center(
          child: Stack(children: [
            const BezierContainer(),
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: FadeAnimation(
                    delay: 1,
                    child: Column(
                      children: [

                        Text(
                          'Welcome to',
                          style: TextStyle(
                              fontSize: 18.6.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors().primaryColor),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'FAZ',
                            style: TextStyle(
                                fontSize: 30.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors().primaryColor),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '3',
                                  style: TextStyle(
                                      color: AppColors().primaryColor2)),
                              TextSpan(
                                  text: 'A',
                                  style: TextStyle(
                                      color: AppColors().primaryColor)),

                            ],
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [

                                Button(
                                  buttonColor: AppColors().primaryColor,
                                  buttonText: 'Customer',
                                  buttonHeight: 16,
                                  buttonWidth: 10,
                                  onPressed: () {
                                    // todo validation
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CustomerLogin()));
                                  },
                                  textButtonColor: AppColors().primaryColor3,
                                ),
                                SizedBox(
                                 width: 10.w
                                  ,
                                ),
                                Button(
                                    buttonColor: AppColors().primaryColor,
                                    buttonText: 'Worker',
                                    buttonHeight: 16,
                                    buttonWidth: 10,
                                    onPressed: () {
                                      // todo validation
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                               WorkerLogin()));
                                    },
                                    textButtonColor: AppColors().primaryColor3)
                              ],
                            ),
                          ],
                        ),SizedBox(
                          height: 25.h,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text("Need Help ?",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  fontSize: 13.sp,
                                    color: AppColors().primaryColor2,
                                    fontWeight: FontWeight.bold)))


                      ],
                    ),
                  ),
                ),
              )
            ]),
          ]),
        ),
      );
    }

    );
  }
}
