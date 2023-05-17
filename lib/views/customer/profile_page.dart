import 'package:faz3a_application/utils/components/app_bar.dart';
import 'package:faz3a_application/utils/components/button.dart';
import 'package:faz3a_application/utils/components/circle_top.dart';
import 'package:faz3a_application/utils/components/city_drop_down.dart';
import 'package:faz3a_application/utils/components/cubit/app/cubit.dart';
import 'package:faz3a_application/utils/components/cubit/app/states.dart';
import 'package:faz3a_application/utils/components/drop_down.dart';
import 'package:faz3a_application/utils/components/registration_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';


import '../../utils/app_colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var fnameController = TextEditingController();
  var lnameController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();
  int selectedYear = 2000;
String selectedValue ='';

  @override

  String carModelLabel = "Car Model";
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        var user = AppCubit.get(context).userModel;
         emailController.text = user?.email ?? '';
         fnameController.text = user?.fname ?? '';
         lnameController.text = user?.lname ?? '';
         phoneController.text = user?.phone ?? '';
         addressController.text = user?.address ?? '';
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
                      labelText: "${user?.fname}",
                      inputController: fnameController,
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
                      labelText: "${user?.lname}",
                      notMobileNumber: true,
                      inputController: lnameController,
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
                      labelText: "${user?.phone}",
                      notMobileNumber: false,
                      inputController: phoneController,
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
                      onChange: (String value) {  },),

                    SizedBox(
                      height: .2.h,
                    ),


                    RegTextField(width: 50,
                      labelText: "${user?.email}",
                      notMobileNumber: true,
                      numberInput: false,
                      inputController: emailController,
                      isPassword: false,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),

                    RegTextField(width: 50,
                      labelText: "${user?.address}",
                      notMobileNumber: true,
                      numberInput: false,
                      inputController: addressController,
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
                        cubit.UpdateUser(
                            email: emailController.text,
                            fname: fnameController.text,
                            lname: lnameController.text,
                            phone: phoneController.text,
                            city: '',
                            address: addressController.text);

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
      },

    );
  }
}
