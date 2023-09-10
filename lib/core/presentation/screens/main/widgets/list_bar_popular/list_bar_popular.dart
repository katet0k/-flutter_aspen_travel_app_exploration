import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_my_information/core/domain/controls/img_url_controller.dart';
import 'package:flutter_my_information/core/presentation/screens/main/widgets/list_bar_popular/non_selected_image.dart';
import 'package:get/get.dart';

class ListBarPopular extends StatefulWidget {
  const ListBarPopular({Key? key});

  @override
  State<ListBarPopular> createState() => _ListBarState();
}

class _ListBarState extends State<ListBarPopular> {
  final List<String> imageUrls = [
    'assets/popular/1.jpg',
    'assets/popular/2.jpg',
    'assets/popular/3.jpg',
  ];

  final List<String> textUrls = [
    'Coeurdes Alpes1',
    'Coeurdes Alpes2',
    'Coeurdes Alpes3'
  ];

  final List<String> ratingUrls = ['4.1', '4.3', '4.5'];

  final List<String> textinfoUrls = [
    'Aspen is as close as one can get to a storybook \n alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....',
    'Aspen is as close as one can get to a storybook \n alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....',
    'Aspen is as close as one can get to a storybook \n alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....'
  ];

  final List<String> reviewsUrls = [
    '(345 reviews)',
    '(355 reviews)',
    '(365 reviews)'
  ];

  final List<String> priceUrls = ['100', '200', '300'];

  var selectedValue = 'Location';

  @override
  Widget build(BuildContext context) {
    return Scrollable(
      viewportBuilder: (BuildContext context, ViewportOffset position) {
        return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var index = 0; index < imageUrls.length; index++)
                  (selectedValue == imageUrls[index])
                      ? NonSelectedImage(imageUrl: imageUrls[index])
                      : InkWell(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(33)),
                          hoverColor: const Color.fromARGB(255, 238, 243, 255),
                          onTap: () {
                            var controller = Get.find<UrlController>();
                            controller.setImgUrl(
                                imageUrls[index],
                                textUrls[index],
                                ratingUrls[index],
                                textinfoUrls[index],
                                priceUrls[index],
                                reviewsUrls[index]);
                            Get.toNamed('/detail', arguments: textUrls[index]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(33)),
                                  child: Image.asset(
                                    imageUrls[index],
                                    width: 220,
                                    height: 260,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 170, 0, 20),
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        color: const Color(0xFF4D5652),
                                        child: SizedBox(
                                          height: 35,
                                          width: 120,
                                          child: Row(children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        12, 10, 0, 10),
                                                child: Text(textUrls[index],
                                                    style: const TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                    )),
                                              ),
                                            ),
                                          ]),
                                        ))),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 210, 0, 20),
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        color: const Color(0xFF4D5652),
                                        child: SizedBox(
                                          height: 35,
                                          width: 80,
                                          child: Row(children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 0, 10, 0),
                                              child: Image.asset(
                                                'assets/image/star.png',
                                                width: 15,
                                                height: 15,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 10, 0, 10),
                                                child: Text(ratingUrls[index],
                                                    style: const TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                    )),
                                              ),
                                            ),
                                          ]),
                                        ))),
                              ],
                            ),
                          ),
                        )
              ],
            ));
      },
    );
  }
}
