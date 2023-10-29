// ignore_for_file: camel_case_types

import 'package:get/route_manager.dart';
import 'package:shared/shared.dart';

class SHARED_ROUTER {
  static List<GetPage> routes = [
    GetPage(
      name: SHARED_ROUTES.SPLASH_SCREEN,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: SHARED_ROUTES.ERROR_SCREEN,
      page: () => const ErrorScreen(),
    ),
    GetPage(
      name: SHARED_ROUTES.MAINTENANCE_SCREEN,
      page: () => const MaintenanceScreen(),
    ),
    GetPage(
      name: SHARED_ROUTES.PERMISSION_SCREEN,
      page: () => const PermissionDeniedScreen(),
    ),
    GetPage(
      name: SHARED_ROUTES.UNAUTHORIZED_SCREEN,
      page: () => const UnAuthorizedScreen(),
    )
  ];
}
