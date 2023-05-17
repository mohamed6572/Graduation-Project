import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faz3a_application/utils/components/cubit/register/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/user_model.dart';
class registerCubit extends Cubit<registerStates> {
  registerCubit() : super(InitialState());

  static registerCubit get(context) => BlocProvider.of(context);


  void userRegister({
    required String email,
    required String fname,
    required String lname,
    required String phone,
    required String password,
    required String city,
    required String address,
  }) {
    emit(RegisterLodingState());

    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {

      createUser(
        uId: value.user!.uid,
        email: email,
        phone: phone,
          fname: fname,
          address:address ,
        city: city,
        lname: lname,

      );

    }).catchError((error) {
      emit(RegisterErerorState());
    });
  }

  void createUser({
    required String email,
    required String fname,
    required String lname,
    required String phone,
    required String uId,
    required String city,
    required String address,

  }) {
    UserModel model =
    UserModel(fname: fname, email: email, phone: phone, uId: uId,isEmailVerified: false,
      address:address ,city: city,lname: lname,orders: [customerOrders(
          address: 'AD',
          date: '22/2/2022',
          isapprove: true,
          name: 'mohamd',
          phone: '0102333123',
          uId: ''

        )]

    );

    FirebaseFirestore.instance
        .collection('customer_users')
        .doc(uId)
        .set(model.toJson())
        .then((value) {
      emit(CreateUserSucseslState());
    })
        .catchError((error) {
      emit(CreateUserErerorState());
    });
  }

}
