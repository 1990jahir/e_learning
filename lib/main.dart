import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/data/utils/color_manager.dart';
import 'app/data/utils/string_manager.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    ScreenUtilInit(
      builder: (
          context,
          child,
          ) {
        return GetMaterialApp(
          title: StringManager.applicationTitle,
          debugShowCheckedModeBanner: false,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          defaultTransition: Transition.cupertino,
          themeMode: ThemeMode.system,

          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                systemNavigationBarColor: ColorManager.primary,
                systemNavigationBarIconBrightness: Brightness.dark,
                statusBarColor: ColorManager.primary,
                statusBarIconBrightness: Brightness.dark,
                statusBarBrightness: Brightness.light,
              ),
            ),
            textTheme: TextTheme(
              bodyText1: TextStyle(fontFamily: 'DM Sans'),
              bodyText2: TextStyle(fontFamily: 'DM Sans'),
              headline1: TextStyle(fontFamily: 'DM Sans'),
              headline2: TextStyle(fontFamily: 'DM Sans'),
              headline3: TextStyle(fontFamily: 'DM Sans'),
              headline4: TextStyle(fontFamily: 'DM Sans'),
              headline5: TextStyle(fontFamily: 'DM Sans'),
              headline6: TextStyle(fontFamily: 'DM Sans'),
            ),
          ),
        );
      },
    ),
  );
}
