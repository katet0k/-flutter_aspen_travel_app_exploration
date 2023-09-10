import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class BookNowBottom extends StatelessWidget {
  const BookNowBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xFF176FF2)),
      child: ElevatedButton(
          onPressed: () => Get.toNamed('/main'),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(250, 50),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            primary: const Color(0xFF176FF2),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text('Book Now',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: Colors.white,
                    )),
              ),
            ],
          )),
    );
  }
}
