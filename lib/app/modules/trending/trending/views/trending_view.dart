import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/trending_controller.dart';

class TrendingView extends GetView<TrendingController> {
  const TrendingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TrendingView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TrendingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
