import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class CenterButton extends StatelessWidget {
  const CenterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color.fromARGB(255, 79, 135, 220),
      ),
      child: ElevatedButton(
          onPressed: () => Get.toNamed('/main'),
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(320, 60),
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(70)))),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 10),
              Align(
                alignment: Alignment.center,
                child: Text('Explore',
                    style: GoogleFonts.rubik(
                      fontSize: 18,
                      color: Colors.white,
                    )),
              ),
            ],
          )),
    );
  }
}
