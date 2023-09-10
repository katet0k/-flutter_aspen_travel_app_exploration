import 'package:flutter/material.dart';
import 'package:flutter_my_information/core/domain/controls/img_url_controller.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

class CombinedWidget extends StatelessWidget {
  const CombinedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetBuilder<UrlController>(
          builder: (imgUrlController) {
            return ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                imgUrlController.imgUrl.toString(),
                width: 350,
                height: 370,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
        GetBuilder<UrlController>(
          builder: (textUrlController) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 0, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  textUrlController.textUrl.toString(),
                  style: GoogleFonts.montserrat(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
        GetBuilder<UrlController>(
          builder: (ratingUrlController) {
            return Center(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Image.asset(
                    'assets/image/star.png',
                    width: 15,
                    height: 15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 12, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      ratingUrlController.ratingUrls.toString(),
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                GetBuilder<UrlController>(
                  builder: (reviewsUrlController) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(5, 12, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          reviewsUrlController.reviewsUrls.toString(),
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ]),
            );
          },
        ),
        GetBuilder<UrlController>(builder: (textinfoUrlsController) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 22, 20, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  textinfoUrlsController.textinfoUrls.toString(),
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}
