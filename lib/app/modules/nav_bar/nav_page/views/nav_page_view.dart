import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../data/utils/asset_manager.dart';
import '../../../../data/utils/color_manager.dart';
import '../../../../data/utils/string_manager.dart';
import '../controllers/nav_page_controller.dart';
import '../widget/nav_widget.dart';

class NavPageView extends GetView<NavPageController> {
  const NavPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.navigationBarKey,
      body: Obx(() => controller.bottomPages[controller.currentIndex.value]),
      endDrawer: NavigationBarWidget.menuDrawer(),
      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        onTap: (index) {
          controller.openController(index);
        },
        selectedLabelStyle:const TextStyle(
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        selectedItemColor: ColorManager.appBarText,
        unselectedItemColor: ColorManager.navText,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        showSelectedLabels: true,
        backgroundColor: ColorManager.boxColor,
        //type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.all(
                8.h,
              ),
              width: 175.w,
              child: Image.asset(
                AssetManager.homeE,
                height: 25.h,
              ),
            ),
            icon: Image.asset(
              AssetManager.homeD,
              height: 25.h,
            ),
            label:StringManager.dashboard,
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.all(
                8.h,
              ),
              width: 175.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.primary,
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.black.withOpacity(
                      0.25,
                    ),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Image.asset(
                AssetManager.collab,
                height: 25.h,
              ),
            ),
            icon: Image.asset(
              AssetManager.collab,
              height: 25.h,
            ),
            label: StringManager.collab,
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.all(
                8.h,
              ),
              width: 175.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.primary,
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.black.withOpacity(
                      0.25,
                    ),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Image.asset(
                AssetManager.learning,
                height: 25.h,
              ),
            ),
            icon: Image.asset(
              AssetManager.learning,
              height: 25.h,
            ),
            label:StringManager.learning,
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.all(
                8.h,
              ),
              width: 175.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.primary,
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.black.withOpacity(
                      0.25,
                    ),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Image.asset(
                AssetManager.trendinng,
                height: 25.h,
              ),
            ),
            icon: Image.asset(
              AssetManager.trendinng,
              height: 25.h,
            ),
            label: StringManager.trending,
          ),
        ],
      )

    );
  }
}
