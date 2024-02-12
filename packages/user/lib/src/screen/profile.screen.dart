import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared/shared.dart';

import '../controllers/home.controller.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

HomeController _hc = Get.put(HomeController());

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Obx(() {
            if(_hc.postStatus.value == API_STATUS.loading) {
              return CircularProgressIndicator();
            }
            else if(_hc.postStatus.value == API_STATUS.success) {
              return Text("POST => ${_hc.post.value.title}");
            } else {
              return Text("ERRor");
            }
          })
        ),
      ),
    );
  }
}
