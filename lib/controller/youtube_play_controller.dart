import 'package:get/get.dart';

class YoutubePlayController extends GetxController {
  var ifliked = false.obs;

  void login() {
    // handle like action
    if (ifliked == true) {
      ifliked.value = false;
    } else {
      ifliked.value = true;
    }
  }
}
