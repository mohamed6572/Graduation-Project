import 'package:faz3a_application/utils/components/worker/worker_bottom_bar.dart';
import 'package:flutter/material.dart';

class WorkerSystem extends StatelessWidget {
  const WorkerSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WorkerBottomNavigationBar(),
    );
  }
}
