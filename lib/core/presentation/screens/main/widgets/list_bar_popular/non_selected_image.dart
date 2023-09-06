import 'package:flutter/material.dart';

class NonSelectedImage extends StatelessWidget {
  const NonSelectedImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33),
      ),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(33)),
            child: Image.network(
              imageUrl,
              width: 220,
              height: 260,
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}
