import 'package:bloc/bloc.dart';
import 'package:faz3a_application/utils/components/Bloc_Observer.dart';
import 'package:faz3a_application/utils/components/cubit/app/cubit.dart';
import 'package:faz3a_application/utils/components/cubit/app/states.dart';
import 'package:faz3a_application/utils/components/cubit/register/cubit.dart';
import 'package:faz3a_application/utils/components/cubit/register/states.dart';
import 'package:faz3a_application/views/customer/customer_system.dart';
import 'package:faz3a_application/views/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main()  async {
  BlocOverrides.runZoned(
        () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      runApp(MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType)
    {
      return BlocProvider(
        create: (context) => AppCubit()..getUserData(),
        child: BlocConsumer<AppCubit,AppStates>(
          listener: (context, state) {},
          builder:  (context, state) {
            return  MaterialApp(
              debugShowCheckedModeBanner: false,
              home:FirebaseAuth.instance.currentUser !=null?CustomerSystem() : WelcomeScreen(),
            );
          },

        ),
      );
    });
  }
}


