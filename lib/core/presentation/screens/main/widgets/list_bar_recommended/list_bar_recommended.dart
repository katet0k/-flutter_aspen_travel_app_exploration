import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_my_information/core/presentation/screens/main/widgets/list_bar_recommended/non_selected_recommended.dart';
import 'package:flutter_my_information/core/presentation/screens/main/widgets/list_bar_recommended/selected_recommended.dart';

class ListBarRecommended extends StatefulWidget {
  const ListBarRecommended({super.key});

  @override
  State<ListBarRecommended> createState() => _ListBarState();
}

class _ListBarState extends State<ListBarRecommended> {
  final List<String> imageUrls = [
    'assets/recommended/1.jpg',
    'assets/recommended/2.jpg',
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
                ? SelectedItem1(imageUrl: url)
                : InkWell(
                    borderRadius: BorderRadius.circular(33),
                    onTap: () {
                      setState(() {
                        selectedValue = url;
                      });
                    },
                    child: NonSelectedItem1(imageUrl: url),
                  ),
        ]),
      );
    });
  }
}
