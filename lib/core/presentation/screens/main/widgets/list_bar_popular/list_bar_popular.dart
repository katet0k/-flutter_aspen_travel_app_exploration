import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_my_information/core/presentation/screens/main/widgets/list_bar_popular/non_selected_image.dart';
import 'package:flutter_my_information/core/presentation/screens/main/widgets/list_bar_popular/selected_image.dart';

class ListBarPopular extends StatefulWidget {
  const ListBarPopular({super.key});

  @override
  State<ListBarPopular> createState() => _ListBarState();
}

class _ListBarState extends State<ListBarPopular> {
  final List<String> imageUrls = [
    'assets/popular/1.jpg',
    'assets/popular/2.jpg',
    'assets/popular/3.jpg',
  ];

  var selectedValue = 'Location';

  @override
  Widget build(BuildContext context) {
    return Scrollable(
        viewportBuilder: (BuildContext context, ViewportOffset position) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          for (var url in imageUrls)
            (selectedValue == url)
                ? NonSelectedImage(imageUrl: url)
                : InkWell(
                    borderRadius: BorderRadius.circular(33),
                    onTap: () {
                      setState(() {
                        selectedValue = url;
                      });
                    },
                    child: SelectedImage(imageUrl: url),
                  ),
        ]),
      );
    });
  }
}
