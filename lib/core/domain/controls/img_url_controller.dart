import 'package:get/get.dart';

class UrlController extends GetxController {
  var textUrl = ''.obs;
  var imgUrl = ''.obs;
  var ratingUrls = ''.obs;
  var textinfoUrls = ''.obs;
  var pricefoUrls = ''.obs;
  var reviewsUrls = ''.obs;

  void setImgUrl(String url, String urlt, String urlr, String urltextinfo,
      String urlprice, String urlrreviews) {
    textUrl.value = urlt;
    imgUrl.value = url;
    ratingUrls.value = urlr;
    textinfoUrls.value = urltextinfo;
    pricefoUrls.value = urlprice;
    reviewsUrls.value = urlrreviews;
  }
}
