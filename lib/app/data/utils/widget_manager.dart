import 'package:e_learning/app/data/utils/string_manager.dart';
import 'package:e_learning/app/modules/nav_bar/nav_page/controllers/nav_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'color_manager.dart';


class WidgetManager {
  WidgetManager._();

  static Widget dashboardDrawer() {
    final controller = Get.put(NavPageController());
    var dashboardList = [
      {
        'title': StringManager.viewEvent,
        'onTap': '/view-events',
      },
      {
        'title': StringManager.myProfile,
        'onTap': '/my-profile',
      },
      {
        'title': StringManager.editProfile,
        'onTap': '/edit-profile',
      },

    ];

    return Drawer(
      width: ScreenUtil().screenWidth / 1.5,
      elevation: 10,
      child: Column(
        children: [
          Container(
            height: 40.h,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: ColorManager.primaryOpacity,
                ),
              ),
            ),
            child: SizedBox()
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dashboardList.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () async {
                    Get.back();
                  },
                  child: Container(
                    height: 40.h,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                      left: 10.w,
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: ColorManager.primaryOpacity,
                        ),
                      ),
                    ),
                    child: Text(
                      '${dashboardList[index]['title']}',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: ColorManager.appBarText,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
