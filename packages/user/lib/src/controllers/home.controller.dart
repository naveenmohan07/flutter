import 'dart:math';

import 'package:get/get.dart';
import 'package:shared/shared.dart';
import 'package:user/src/services/home.service.dart';
import 'package:user/src/types/home.type.dart';

final logger = Logger(logName: "HomeController");

class HomeController extends GetxController {
  Rx<IPost> post = Rx<IPost>(IPost());
  var postStatus = API_STATUS.loading.obs;

  getPost() async {
    logger.info("inside getPost");
    try {
      var ran = Random();
      await HomeService().getTodos(ran.nextInt(5).toString()).then((response) {
        logger.info("inside getPost - success");
        post.value = response;
        postStatus.value = API_STATUS.success;
      });
    } catch (error) {
      logger.info("inside getPost - error -> $error");
      postStatus.value = API_STATUS.error;
    }
  }
}
