import 'package:faz3a_application/utils/components/app_bar.dart';
import 'package:faz3a_application/utils/components/button.dart';
import 'package:faz3a_application/utils/components/circle_top.dart';
import 'package:faz3a_application/utils/components/city_drop_down.dart';
import 'package:faz3a_application/utils/components/drop_down.dart';
import 'package:faz3a_application/utils/components/registration_field.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


import '../../utils/app_colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  int selectedYear = 2000;


  @override

  String carModelLabel = "Car Model";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors().primaryColor,
                  AppColors().primaryColor3
                ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(9.2.h),
              child: const CusAppBar(
                title: "Profile",
              )),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const CircularTop(),
                RegTextField(width: 50,
                  labelText: "First name",
                  notMobileNumber: true,
                  numberInput: false,
                  isPassword: false,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),  RegTextField(width: 50,
                  labelText: "Last Name",
                  notMobileNumber: true,
                  numberInput: false,
                  isPassword: false,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                RegTextField(width: 50,
                  labelText: "Mobile number ",
                  notMobileNumber: false,
                  numberInput: true,
                  isPassword: false,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 1.h,
                ),
                CityDropDown(
validator: (value) => value == null ? "Select a city" : null,
                    onChange: (v) {}),

                SizedBox(
                  height: .2.h,
                ),


                RegTextField(width: 50,
                  labelText: "Email",
                  notMobileNumber: true,
                  numberInput: false,
                  isPassword: false,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),

                RegTextField(width: 50,
                  labelText: "Address",
                  notMobileNumber: true,
                  numberInput: false,
                  isPassword: false,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Button(
                  buttonColor: AppColors().primaryColor,
                  buttonText: "Update",
                  buttonHeight: 30,
                  buttonWidth: 10,
                  onPressed: ()async {
                    return showDialog<void>
                      (context: context, barrierDismissible: false,
                        builder: (BuildContext context){
                          return AlertDialog(
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: const <Widget>[
                                  Text('The informations Updated Successfully!'),
                                ],
                              ),
                            ),

                          );
                        });

                  },
                  textButtonColor: Colors.white,
                ),
                SizedBox(
                  height: 3.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
