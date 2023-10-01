import 'package:get/get.dart';

class BaseController extends GetxController {
  var loadingStatus = false.obs;

  bool canRequest() {
    if (!loadingStatus.value) {
      loadingStatus.value = true;
      update();
      return loadingStatus.value;
    }
    return false;
  }

  finishRequest() {
    loadingStatus.value = false;
    update();
  }
}
