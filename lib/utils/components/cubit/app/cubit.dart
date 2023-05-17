
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faz3a_application/utils/components/cubit/app/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/user_model.dart';
class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);
UserModel? userModel;

  void getUserData() {
    emit(getUserLoadingState());

    FirebaseFirestore.instance.collection('customer_users').doc(FirebaseAuth.instance.currentUser?.uid).get().then((value) {
      print(value.data());
      userModel = UserModel.fromJson(value.data()!);
      emit(getUserSucsesState());
    }).catchError((error) {
      emit(getUserErrorState());
    });
  }



  void UpdateUser({
     String? email,
     String? fname,
     String? lname,
     String? phone,
     String? city,
     String? address,

  }) {
    emit(userUpdateLoadingState());



    UserModel model = UserModel(fname: fname??userModel?.fname,  email: email?? userModel?.email,
        uId: userModel?.uId, phone: phone??userModel?.phone,isEmailVerified: false,
        address:address??userModel?.address ,city: city??userModel?.city,lname: lname??userModel?.lname,orders: [customerOrders(
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
        .doc(userModel?.uId)
        .update(model.toJson())
        .then((value) {
      getUserData();
    }).catchError((error) {
      emit(userUpdateErrorState());
    });
  }


}
