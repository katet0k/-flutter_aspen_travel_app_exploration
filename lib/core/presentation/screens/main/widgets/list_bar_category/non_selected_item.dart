import 'package:flutter/material.dart';

class NonSelectedItem extends StatelessWidget {
  const NonSelectedItem({super.key, required this.item});

  final String item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        item,
        style: const TextStyle(
          fontSize: 17,
          color: Color(0xFFB8B8B8),
        ),
      ),
    );
  }
}
