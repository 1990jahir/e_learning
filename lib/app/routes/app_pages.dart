import 'package:get/get.dart';

import '../modules/collab/collaboration/bindings/collaboration_binding.dart';
import '../modules/collab/collaboration/views/collaboration_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/learning/learning/bindings/learning_binding.dart';
import '../modules/learning/learning/views/learning_view.dart';
import '../modules/nav_bar/nav_page/bindings/nav_page_binding.dart';
import '../modules/nav_bar/nav_page/views/nav_page_view.dart';
import '../modules/trending/trending/bindings/trending_binding.dart';
import '../modules/trending/trending/views/trending_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NAV_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NAV_PAGE,
      page: () => const NavPageView(),
      binding: NavPageBinding(),
    ),
    GetPage(
      name: _Paths.COLLABORATION,
      page: () => const CollaborationView(),
      binding: CollaborationBinding(),
    ),
    GetPage(
      name: _Paths.LEARNING,
      page: () => const LearningView(),
      binding: LearningBinding(),
    ),
    GetPage(
      name: _Paths.TRENDING,
      page: () => const TrendingView(),
      binding: TrendingBinding(),
    ),
  ];
}
