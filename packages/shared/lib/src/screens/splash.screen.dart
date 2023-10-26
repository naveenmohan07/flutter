import 'package:flutter/material.dart';
import 'package:shared/src/services/home.service.dart';
import 'package:shared/src/utils/logger.util.dart';

final logger = Logger(logName: "Splash_Screen");
final homeService = HomeService();

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    logger.info("init screen");
    Future.delayed(
      const Duration(seconds: 5),
      () => {logger.info("inside delay")},
    );
    super.initState();
  }

  getTodo() async {
    await homeService.getTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: getTodo(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // loading state
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return const Text("Error");
              } else {
                return const Text("Has Data");
              }
            } else {
              return const Text("No Data");
            }
          },
        ),
      ),
    );
  }
}
