import 'package:flutter/material.dart';
import 'package:user/user.dart';

// final logger = Logger(logName: "User_App");

class UserApp extends StatefulWidget {
  const UserApp({super.key});

  @override
  State<UserApp> createState() => _UserAppState();
}

class _UserAppState extends State<UserApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreen()
    );
  }
}
