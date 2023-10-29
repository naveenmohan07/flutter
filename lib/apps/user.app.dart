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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("User"),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),
            ProfileScreen()
          ],
        ),
        bottomNavigationBar: const TabBar(
          labelColor: Colors.teal,
          indicatorColor: Colors.teal,
          tabs: [
            Tab(
              text: "Home",
            ),
            Tab(
              text: "Profile",
            )
          ],
        ),
      ),
    );
  }
}
