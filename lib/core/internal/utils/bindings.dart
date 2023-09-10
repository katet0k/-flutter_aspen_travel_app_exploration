import 'package:flutter_my_information/core/domain/controls/img_url_controller.dart';
import 'package:get/get.dart';

class Binds extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UrlController>(() => UrlController());
  }
}
