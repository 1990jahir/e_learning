import 'dart:async';

import 'package:e_learning/app/modules/collab/collaboration/controllers/collaboration_controller.dart';
import 'package:e_learning/app/modules/collab/collaboration/views/collaboration_view.dart';
import 'package:e_learning/app/modules/home/controllers/home_controller.dart';
import 'package:e_learning/app/modules/home/views/home_view.dart';
import 'package:e_learning/app/modules/learning/learning/controllers/learning_controller.dart';
import 'package:e_learning/app/modules/learning/learning/views/learning_view.dart';
import 'package:e_learning/app/modules/trending/trending/controllers/trending_controller.dart';
import 'package:e_learning/app/modules/trending/trending/views/trending_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NavPageController extends GetxController  with GetSingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> navigationBarKey = GlobalKey();
  late AnimationController animationController;
  late Animation<double> animation;
  var currentIndex = 0.obs;
  var previousIndex = 0.obs;
  var userType=''.obs;
  var bottomPages = const [
    HomeView(),
    CollaborationView(),
    LearningView(),
    TrendingView(),
  ];

  Timer ? timer;


  @override
  void onInit() async {
    super.onInit();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);

    initializeController(currentIndex.value);
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void onReady() async {
    super.onReady();
    timer = Timer(Duration(milliseconds: 500),() {animationController.forward();});
  }

  @override
  void onClose() {
    closeController(currentIndex.value);
    animationController.dispose();
    timer?.cancel();
    super.onClose();
  }

  void initializeController(int index) {
    switch (index) {
      case 0:
        Get.put(HomeController());
        break;
      case 1:
        Get.put(CollaborationController());
        break;
      case 2:
        Get.put(LearningController());
        break;
      case 3:
        Get.put(TrendingController());
        break;
    }
  }

  void closeController(int index) {
    switch (index) {
      case 0:
        Get.delete<HomeController>();
        break;
      case 1:
        Get.delete<CollaborationController>();
        break;
      case 2:
        Get.delete<LearningController>();
        break;
      case 3:
        Get.delete<TrendingController>();
        break;
    }
  }

  void openController(int index) {
    if (currentIndex.value == index) {
      return;
    }
    // animationController.reset();
    closeController(currentIndex.value);
    previousIndex.value = currentIndex.value;
    currentIndex.value = index;
    initializeController(currentIndex.value);
    timer = Timer(Duration(milliseconds: 500),() {animationController.forward();});

    // animationController.forward();
  }

  void openProfileController(int index) {
    closeController(0);
    currentIndex.value = index;
    initializeController(currentIndex.value);
  }

  void onItemTapped(int index) {
    openController(index);
  }

}