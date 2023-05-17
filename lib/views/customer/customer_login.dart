import 'package:faz3a_application/utils/app_colors.dart';
import 'package:faz3a_application/utils/components/button.dart';
import 'package:faz3a_application/utils/components/text_field.dart';
import 'package:faz3a_application/utils/draws/bezier.dart';
import 'package:faz3a_application/utils/fade.dart';
import 'package:faz3a_application/views/admin/admin_login.dart';
import 'package:faz3a_application/views/admin/admin_panel.dart';
import 'package:faz3a_application/views/customer/customer_registration.dart';
import 'package:faz3a_application/views/customer/customer_system.dart';
import 'package:faz3a_application/views/worker/worker_registration.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomerLogin extends StatelessWidget {
  CustomerLogin({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().primaryColor3,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                const BezierContainer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'FAZ',
                              style: TextStyle(
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors().primaryColor3),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '3',
                                    style: TextStyle(
                                        color: AppColors().primaryColor2)),
                                TextSpan(
                                    text: 'A',
                                    style: TextStyle(
                                        color: AppColors().primaryColor3)),

                              ],
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          FadeAnimation(
                              delay: 1.5,
                              child: CusTextField(
                                labelText: "Email Address",
                                isPassword: false,
                                onChanged: () {},
                                validator: (text) {
                                  if (text == null || text.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              )),
                          /* Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text(_errorMessage, style: TextStyle(color: Colors.red),),
                         ],
                       ),
              ),*/
                          FadeAnimation(
                              delay: 1.5,
                              child: CusTextField(
                                labelText: "Password",
                                isPassword: true,
                                validator: (text) {
                                  if (text == null || text.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Forgot Password?",
                                      style: TextStyle(
                                          color: AppColors().primaryColor3,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))
                            ],
                          ),
                          Button(
                            buttonColor: AppColors().primaryColor,
                            buttonText: "Login",
                            buttonHeight: 40,
                            buttonWidth: 10,
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>CustomerSystem()
                                  ));
                            },
                            textButtonColor: AppColors().primaryColor3,
                          ),
                          SizedBox(
                            height: 11.8.h,
                          ),
                          Row(children: <Widget>[
                            const Expanded(
                                child: Divider(
                                  color: Colors.grey,
                                  thickness: 2,
                                )),
                            SizedBox(
                              width: .9.w,
                            ),
                            Text(
                              "OR",
                              style: TextStyle(
                                  color:AppColors().primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: .9.w,
                            ),
                            const Expanded(
                                child: Divider(
                                  color: Colors.grey,
                                  thickness: 2,
                                )),
                          ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account ?",
                                style: TextStyle(
                                    color: AppColors().primaryColor2,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>CustomerReg()
                                        ));
                                  },
                                  child: Text("Register Now",
                                      style: TextStyle(
                                          color: AppColors().primaryColor,
                                          fontWeight: FontWeight.bold)))
                            ],
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>AdminLogin()
                                    ));
                              },
                              child: Text("Login As Admin",
                                  style: TextStyle(
                                      color: AppColors().primaryColor2,
                                      fontWeight: FontWeight.bold)))
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );;
  }
}
