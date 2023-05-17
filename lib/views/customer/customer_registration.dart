import 'package:faz3a_application/utils/app_colors.dart';
import 'package:faz3a_application/utils/components/button.dart';
import 'package:faz3a_application/utils/components/city_drop_down.dart';
import 'package:faz3a_application/utils/components/cubit/register/cubit.dart';
import 'package:faz3a_application/utils/components/cubit/register/states.dart';
import 'package:faz3a_application/utils/components/drop_down.dart';
import 'package:faz3a_application/utils/components/registration_field.dart';
import 'package:faz3a_application/views/customer/customer_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class CustomerReg extends StatefulWidget {
  const CustomerReg({Key? key}) : super(key: key);

  @override
  State<CustomerReg> createState() => _CustomerRegState();
}

class _CustomerRegState extends State<CustomerReg> {
  String selectedCity='';
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var fnameController = TextEditingController();
  var lnameController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _dropdownFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => registerCubit(),
      child: BlocConsumer<registerCubit, registerStates>(
        listener: (context, state) {
          if(state is CreateUserSucseslState ){
            navigateTo(context, CustomerLogin());
          }
        },
        builder: (context, state) {
          var cubit = registerCubit.get(context);
          return Scaffold(
            backgroundColor: AppColors().primaryColor,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Center(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          'Create FAZ3A Account ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors().primaryColor2,
                              fontSize: 18.5.sp),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RegTextField(
                              labelText: "Fisrt Name",
                              notMobileNumber: true,
                              numberInput: false,
                              isPassword: false,
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              inputController: fnameController,
                              width: 38,
                            ),
                            RegTextField(
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
                              inputController: lnameController,
                              width: 38,
                            )
                          ],
                        ),
                        RegTextField(
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
                          inputController: emailController,
                          width: 80,
                        ),
                        RegTextField(
                          labelText: "Password",
                          notMobileNumber: true,
                          numberInput: false,
                          isPassword: true,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          inputController: passwordController,
                          width: 80,
                        ),
                        RegTextField(
                          labelText: "Mobile Number",
                          notMobileNumber: false,
                          numberInput: true,
                          isPassword: false,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          inputController: phoneController,
                          width: 80,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Your City',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors().primaryColor2,
                                  fontSize: 19.5.sp),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            CityDropDown(

                                validator: (value) =>
                                    value == null ? "Select city" : null,

                                onChange: (v) {
                                  setState(() {
                                    print(v);
                                    selectedCity = v;
                                    print(v);
                                  });
                                }),
                          ],
                        ),
                        SizedBox(
                          height: 1.4.h,
                        ),
                        RegTextField(
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
                          inputController: addressController,
                          width: 80,
                        ),
                        Button(
                          buttonColor: AppColors().primaryColor3,
                          buttonText: "Create Account",
                          buttonHeight: 30,
                          buttonWidth: 10,
                          onPressed: () async {


                            if (_formKey.currentState!.validate()) {


                              cubit.userRegister(
                                  email: emailController.text,
                                  fname: fnameController.text,
                                  lname: lnameController.text,
                                  phone: phoneController.text,
                                  password: passwordController.text,
                                  city: '',
                                  address: addressController.text);
                              // if (_dropdownFormKey.currentState!.validate()) {
                              //
                              //   return showDialog<void>
                              //     (context: context, barrierDismissible: false,
                              //       builder: (BuildContext context){
                              //         return AlertDialog(
                              //           content: SingleChildScrollView(
                              //             child: ListBody(
                              //               children: const <Widget>[
                              //                 Text('Please Select Your City'),
                              //               ],
                              //             ),
                              //           ),
                              //           actions: <Widget>[
                              //             TextButton(
                              //               child: const Text('Approve'),
                              //               onPressed: () {
                              //                 Navigator.of(context).pop();
                              //               },
                              //             ),
                              //           ],
                              //         );
                              //       });
                              // }
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
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => CustomerLogin()));
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
            ),
          );
        },
      ),
    );
  }
}
