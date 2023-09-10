import 'package:flutter/material.dart';
import 'package:flutter_my_information/core/domain/controls/img_url_controller.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

class Price extends StatelessWidget {
  const Price({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UrlController>(builder: (priceUrlsController) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              priceUrlsController.pricefoUrls.toString(),
              style: GoogleFonts.montserrat(
                fontSize: 20,
                color: const Color(0xFF2DD7A4),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    });
  }
}
