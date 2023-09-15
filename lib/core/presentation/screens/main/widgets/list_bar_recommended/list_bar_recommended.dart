import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_my_information/core/domain/controls/url_controller.dart';
import 'package:flutter_my_information/core/presentation/screens/main/widgets/list_bar_recommended/non_selected_recommended.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ListBarRecommended extends StatefulWidget {
  const ListBarRecommended({super.key});

  @override
  State<ListBarRecommended> createState() => _ListBarState();
}

class _ListBarState extends State<ListBarRecommended> {
  final List<String> imageUrls = [
    'assets/recommended/11.jpg',
    'assets/recommended/22.jpg'
  ];
  final List<String> textUrls = [
    'Explore Aspen',
    'Luxurious Aspen',
  ];

  var selectedValue = 'Location';

  @override
  Widget build(BuildContext context) {
    return Scrollable(
        viewportBuilder: (BuildContext context, ViewportOffset position) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          for (var index = 0; index < imageUrls.length; index++)
            (selectedValue == imageUrls[index])
                ? NonSelectedItem1(
                    imageUrl: imageUrls[index], textUrl: textUrls[index])
                : InkWell(
                    borderRadius: BorderRadius.circular(33),
                    onTap: () {
                      var controller = Get.find<UrlControllerr>();
                      controller.setImgUrll(imageUrls[index], textUrls[index]);
                    },
                    child: NonSelectedItem1(
                        imageUrl: imageUrls[index], textUrl: textUrls[index])),
        ]),
      );
    });
  }
}
