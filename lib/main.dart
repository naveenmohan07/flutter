import 'package:boiler_plate/apps/user.app.dart';
import 'package:boiler_plate/constants/app.route.constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:shared/shared.dart';
import 'package:user/user.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  FirebaseConfigService().initilize();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String val = "";
  @override
  void initState() {
    val = FirebaseConfigService().getString("APP_THEME");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: val == "light"
          ? ApplicationTheme.lightTheme
          : ApplicationTheme.darkTheme,
      initialRoute: SHARED_ROUTES.SPLASH_SCREEN,
      getPages: [
        ...SHARED_ROUTER.routes,
        GetPage(name: APP_ROUTES.USER, page: () => const UserApp(), children: USER_ROUTER.routes)
      ],
    );
  }
}
