import 'package:get/get.dart';

class YoutubePlayController extends GetxController {
  var ifliked = false.obs;

  void like() {
    // handle like action
    if (ifliked ==false) {
      ifliked.value = true;
    } else {
      ifliked.value = false;
    }
  }
}
