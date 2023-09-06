import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_my_information/core/presentation/screens/main/widgets/list_bar_category/non_selected_item.dart';
import 'package:flutter_my_information/core/presentation/screens/main/widgets/list_bar_category/selected_item.dart';

class ListBar extends StatefulWidget {
  const ListBar({super.key});

  @override
  State<ListBar> createState() => _ListBarState();
}

class _ListBarState extends State<ListBar> {
  final List<String> texts = ['Location', 'Hotel', 'Food', 'Adventure', 'More'];

  var selectedValue = 'Location';

  @override
  Widget build(BuildContext context) {
    return Scrollable(
        viewportBuilder: (BuildContext context, ViewportOffset position) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          for (var item in texts)
            (selectedValue == item)
                ? SelectedItem(item: item)
                : InkWell(
                    borderRadius: BorderRadius.circular(33),
                    onTap: () {
                      setState(() {
                        selectedValue = item;
                      });
                    },
                    child: NonSelectedItem(item: item),
                  ),
        ]),
      );
    });
  }
}
