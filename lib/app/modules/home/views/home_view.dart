import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../data/utils/asset_manager.dart';
import '../../../data/utils/color_manager.dart';
import '../../../data/utils/string_manager.dart';
import '../../../data/utils/widget_manager.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: const Center(
          child: Text(StringManager.applicationTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'DM Sans',
              color: ColorManager.appBarText,
              fontWeight: FontWeight.w700,
                fontSize: 18
            ),
          ),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Image.asset(AssetManager.drawer,height: 20.h,width: 20.w,),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: WidgetManager.dashboardDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    // color: ColorManager.boxColor,
                    color: ColorManager.boxColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: const TextField(
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    ),
                    decoration: InputDecoration(
                      hintText: 'Search Courses',
                      hintStyle: TextStyle(
                        color: ColorManager.searchColor
                      ),
                      prefixIcon: Icon(Icons.search,color: ColorManager.searchColor,),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16.0),
                    ),

                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(StringManager.mylearnings,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'DM Sans',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: ColorManager.navText,
                        ),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(StringManager.viewAll,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: ColorManager.viewAllColor,
                          ),),
                        SizedBox(width: 5.w,),
                        const Icon(Icons.arrow_forward_ios,color: ColorManager.searchColor,)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 8.h,),
              Container(
                height: 95.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.88,
                      margin: const EdgeInsets.only(right: 4.0,left: 4.0),

                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex:2,
                                    child: Container(
                                      width:75.w,
                                          height: 75.h,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10))
                                          ),
                                          child: Image.asset(AssetManager.topItem, fit: BoxFit.contain),
                                    )
                                  ),
                                  Expanded(
                                      flex:5,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'The future of beauty is LIVE with Mrunal Panchal @mrunu',
                                              style: TextStyle(
                                                  fontFamily: 'DM Sans',
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: ColorManager.navText

                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(height: 4.h,),
                                            Text(
                                              '12 h. 40 min. 26 Chapters',
                                              style:TextStyle(
                                                  fontFamily: 'DM Sans',
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: ColorManager.bottomText

                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],

                                        ),
                                      )
                                  ),
                                  Expanded(
                                      flex:2,
                                      child: Container(
                                          child:CircularPercentIndicator(
                                                  radius: 25.0,
                                                  lineWidth: 3.0,
                                                  percent: .2,
                                                  center: new Text("20%"),
                                                  progressColor: Colors.green,
                                                ),
                                      )
                                  ),
                                ],
                              ),
                              // child: ListTile(
                              //   leading: Container(
                              //     width:75.w,
                              //     height: 75.h,
                              //     decoration: const BoxDecoration(
                              //         borderRadius: BorderRadius.all(Radius.circular(10))
                              //     ),
                              //     child: Image.asset(AssetManager.topItem, fit: BoxFit.contain),
                              //   ),
                              //   title: SizedBox(
                              //     width: 159.w,
                              //     child: Text(
                              //       'The future of beauty is LIVE with Mrunal Panchal @mrunu',
                              //       style: TextStyle(
                              //         fontFamily: 'DM Sans',
                              //           fontSize: 12.sp,
                              //           fontWeight: FontWeight.w700,
                              //         color: ColorManager.navText
                              //
                              //       ),
                              //       maxLines: 1,
                              //       overflow: TextOverflow.ellipsis,
                              //     ),
                              //   ),
                              //   subtitle: Text(
                              //     '12 h. 40 min. 26 Chapters',
                              //     style:TextStyle(
                              //         fontFamily: 'DM Sans',
                              //         fontSize: 10.sp,
                              //         fontWeight: FontWeight.w700,
                              //         color: ColorManager.bottomText
                              //
                              //     ),
                              //     maxLines: 1,
                              //     overflow: TextOverflow.ellipsis,
                              //   ),
                              //   // color: Colors.blueAccent, size: mediumIconSize),
                              //   trailing: SizedBox(
                              //     width: 35.w,
                              //     height: 25.h,
                              //     child: CircularPercentIndicator(
                              //       radius: 25.0,
                              //       lineWidth: 3.0,
                              //       percent: .2,
                              //       center: new Text("20%"),
                              //       progressColor: Colors.green,
                              //     ),
                              //   ),
                              //   selected: true,
                              //   onTap: () async {
                              //   },
                              // ),
                            ),
                          ],
                        )
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 8.h,),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(StringManager.learnings,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'DM Sans',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: ColorManager.navText,
                        ),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 148.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const PageScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        margin: const EdgeInsets.only(right: 16.0),
                        child: Center(
                          child: index%2==0?Image.asset(AssetManager.horizontal_slider1,
                            width: Get.width,
                            height: Get.height,
                            fit: BoxFit.contain,):Image.asset(AssetManager.horizontal_slider2,
                            width: Get.width,
                            height: Get.height,
                            fit: BoxFit.contain,),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(StringManager.academy,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorManager.navText,
                      ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(StringManager.viewAll,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: ColorManager.viewAllColor,
                          ),),
                        SizedBox(width: 5.w,),
                        const Icon(Icons.arrow_forward_ios,color: ColorManager.searchColor,)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Container(
                  height: 390.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const PageScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.82,
                        margin: const EdgeInsets.only(right: 16.0,left: 8.0),

                        child: Center(
                          child: Image.asset(AssetManager.academy1,
                            width: Get.width,
                            height: Get.height,
                            fit: BoxFit.contain,),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Container(
                height: 270.h,
                decoration: const BoxDecoration(
                    color: ColorManager.boxColor,
                    image: DecorationImage(image: AssetImage(
                        'assets/icons/background_img.png'),
                      fit: BoxFit.fill,)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(StringManager.topInstructors,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: 'DM Sans',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: ColorManager.navText,
                            ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h,),
                    Container(
                      height: 230.h,
                      child: PageView.builder(
                        controller: controller.pageController,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(bottom: 8.0,right: 8.0),
                                  child: Center(
                                    child: ListTile(
                                      leading: ConstrainedBox(
                                        constraints: const BoxConstraints(
                                          minWidth: 44,
                                          minHeight: 44,
                                          maxWidth: 64,
                                          maxHeight: 64,
                                        ),
                                        child: Image.asset(AssetManager.user, fit: BoxFit.cover),
                                      ),
                                      title: Text(
                                        "Sophia Daniels",
                                        style: TextStyle(
                                          fontFamily: 'DM Sans',
                                          color: ColorManager.navText,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      subtitle:
                                      Text(
                                        "Top instructor with over 70000 students",
                                        style: TextStyle(
                                          fontFamily: 'DM Sans',
                                          color: ColorManager.viewAllColor,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width:218.w,
                                  margin: const EdgeInsets.only(right: 8.0,bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Center(
                                          child: ListTile(
                                            leading: ConstrainedBox(
                                              constraints: const BoxConstraints(
                                                minWidth: 44,
                                                minHeight: 44,
                                                maxWidth: 64,
                                                maxHeight: 64,
                                              ),
                                              child: Image.asset(AssetManager.user, fit: BoxFit.cover),
                                            ),
                                            title: Text(
                                              "Sophia Daniels",
                                              style: TextStyle(
                                                fontFamily: 'DM Sans',
                                                color: ColorManager.navText,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            subtitle: Text(
                                              "Casting Director",
                                              style: TextStyle(
                                                fontFamily: 'DM Sans',
                                                color: ColorManager.bottomText,
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(StringManager.upcomingCourses,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorManager.navText,
                      ),),
                  ),
                ],
              ),
              SizedBox(height: 8.h,),
              Container(
                height: 152.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      margin: const EdgeInsets.only(right: 16.0,left: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Center(
                        child:
                        Image.asset(AssetManager.bottom_slider,
                          width: Get.width,
                          height: Get.height,
                          fit: BoxFit.fill,),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 8.h,),
              Container(
                height: 195.h,
                width: Get.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(
                      'assets/icons/background_img.png'),
                    fit: BoxFit.fill,)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Learn today,\nlead tomorrow.',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 26.sp,
                            fontFamily: 'DP Sans',
                            color: ColorManager.bottomText
                          ),
                        ),
                      SizedBox(height: 10.h,),
                      Row(
                        children: [
                          Text('Made with',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                fontFamily: 'DP Sans',
                                color: ColorManager.bottomTextLight
                            ),
                          ),
                          SizedBox(width: 5.w,),
                          Image.asset('assets/icons/heart.png',width: 18.w,height: 16.h,),
                          SizedBox(width: 5.w,),
                          Text('in India',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                fontFamily: 'DP Sans',
                                color: ColorManager.bottomTextLight
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
