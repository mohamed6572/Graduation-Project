import 'package:faz3a_application/utils/app_colors.dart';
import 'package:faz3a_application/utils/components/customer/bottom_bar.dart';
import 'package:flutter/material.dart';

class CustomerSystem extends StatelessWidget {
  const CustomerSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: CusBottomNavigationBar(),
    );
  }
}
