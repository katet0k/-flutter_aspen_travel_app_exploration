import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedItem extends StatelessWidget {
  const SelectedItem({super.key, required this.item});

  final String item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(33),
            color: const Color(0xFFF3F8FE),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(item,
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: const Color(0xFF176FF2),
                    fontWeight: FontWeight.bold)),
          )),
    );
  }
}
