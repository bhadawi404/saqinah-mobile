import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/information_controller.dart';

class InformationView extends GetView<InformationController> {
  const InformationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InformationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'InformationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
