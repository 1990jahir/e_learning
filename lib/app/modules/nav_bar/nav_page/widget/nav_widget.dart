import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/color_manager.dart';
import '../../../../data/utils/string_manager.dart';

class NavigationBarWidget {
  NavigationBarWidget._();

  static Widget menuDrawer() {
    var menuList = [
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
            height: 90.h,
            padding: EdgeInsets.only(
              bottom: 10.h,
            ),
            alignment: Alignment.bottomCenter,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: ColorManager.primaryOpacity,
                ),
              ),
            ),
            child: Text(
              StringManager.menu,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.appBarText,
              ),
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: menuList.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () async {
                  await Get.toNamed(
                    '${menuList[index]['onTap']}',
                  );
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
                    '${menuList[index]['title']}',
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
        ],
      ),
    );
  }
}
