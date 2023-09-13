import 'package:get/get.dart';

class UrlControllerr extends GetxController {
  var imgUrl1 = ''.obs;
  var textUrl1 = ''.obs;

  void setImgUrll(String urli, String urlt) {
    textUrl1.value = urlt;
    imgUrl1.value = urli;
  }
}
