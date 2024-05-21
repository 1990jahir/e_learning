import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/collaboration_controller.dart';

class CollaborationView extends GetView<CollaborationController> {
  const CollaborationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CollaborationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CollaborationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
