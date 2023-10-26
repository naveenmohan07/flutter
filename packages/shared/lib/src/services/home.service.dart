import 'package:shared/src/utils/http.util.dart';
import 'package:shared/src/utils/logger.util.dart';

final logger = Logger(logName: "HomeService");

class HomeService {
  Future<dynamic> getTodos() async {
    try {
      var re = await dioInstance.get("posts");
      logger.info("RES => ${re.data}");
      return re;
    } catch (error) {
      rethrow;
    }
  }
}
