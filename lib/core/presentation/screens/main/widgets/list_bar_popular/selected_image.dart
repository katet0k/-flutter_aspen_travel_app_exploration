import 'package:flutter/material.dart';

class SelectedImage extends StatelessWidget {
  const SelectedImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(33),
        ),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(33)),
              child: Image.network(
                imageUrl,
                width: 200,
                height: 260,
                fit: BoxFit.cover,
              ),
            )),
      ),
    );
  }
}
