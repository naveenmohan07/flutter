// ignore_for_file: camel_case_types

import 'package:get/route_manager.dart';
import 'package:user/src/constants/route.constant.dart';
import 'package:user/user.dart';

class USER_ROUTER {
  static List<GetPage> routes = [
    GetPage(
      name: USER_ROUTES.HOME,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: USER_ROUTES.PROFILE,
      page: () => const ProfileScreen(),
    )
  ];
}
