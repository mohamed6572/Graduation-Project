import 'package:faz3a_application/utils/app_colors.dart';
import 'package:faz3a_application/utils/components/button.dart';
import 'package:faz3a_application/utils/components/city_drop_down.dart';
import 'package:faz3a_application/utils/components/drop_down.dart';
import 'package:faz3a_application/utils/components/registration_field.dart';
import 'package:faz3a_application/views/customer/customer_login.dart';
import 'package:faz3a_application/views/worker/worker_login.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WorkerReg extends StatefulWidget {
  const WorkerReg({Key? key}) : super(key: key);

  @override
  State<WorkerReg> createState() => _WorkerRegState();
}

class _WorkerRegState extends State<WorkerReg> {
  String? _selectedServices;
  String? _selectedCity;
  final _formKey = GlobalKey<FormState>();
  final _dropdownFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: AppColors().primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(

          child: Center(
            child: Column(
              children: [
                SizedBox(height: 3.h,),
                Text('Create FAZ3A Account ',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor2,fontSize: 18.5.sp),)
           ,   SizedBox(height: 3.h,), Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                RegTextField(labelText: "Fisrt Name", notMobileNumber: true, numberInput: false, isPassword: false, validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
                width: 38,),
                RegTextField(labelText: "Last Name", notMobileNumber: true, numberInput: false, isPassword: false, validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },width: 38,)
                ],
              ),
                RegTextField(labelText: "Email", notMobileNumber: true, numberInput: false, isPassword: false, validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                  width: 80,),
                RegTextField(labelText: "Password", notMobileNumber: true, numberInput: false, isPassword: true, validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                  width: 80,),
                RegTextField(labelText: "Mobile Number", notMobileNumber: false, numberInput: true, isPassword: false, validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                  width: 80,),
SizedBox(height: 4.h,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Service Type',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().primaryColor2,fontSize: 19.5.sp),)
                  ,SizedBox(width: 4.w,),
                    CusDropDown(
                        validator: (value) => value == null ? "Select Service" : null,
                        onChange: (v) {
                          setState(() {
                            _selectedServices = v;

                          });
                        }

                    ),

                  ],

                ),SizedBox(height: 1.4.h,)
                , RegTextField(labelText: "National number OR Paasport number", notMobileNumber: true, numberInput: false, isPassword: false, validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                  width: 80,),

                Button(
                  buttonColor: AppColors().primaryColor3,
                  buttonText: "Create Account",
                  buttonHeight: 30,
                  buttonWidth: 10,
                  onPressed: () async {

                    if (_formKey.currentState!.validate()) {
                      
                      if (_dropdownFormKey.currentState!.validate()) {

                        return showDialog<void>
                          (context: context, barrierDismissible: false,
                            builder: (BuildContext context){
                              return AlertDialog(
                                content: SingleChildScrollView(
                                  child: ListBody(
                                    children: const <Widget>[
                                      Text('Please Select Your Service'),
                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('Approve'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                      }


                    }
                  },
                  textButtonColor: AppColors().primaryColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ?",
                      style: TextStyle(
                          color: AppColors().primaryColor3,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>WorkerLogin()
                              ));
                        },
                        child: Text("Sign in",
                            style: TextStyle(
                                color: AppColors().primaryColor2,
                                fontWeight: FontWeight.bold)))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
