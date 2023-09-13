import 'package:flutter/material.dart';

class NonSelectedImage extends StatelessWidget {
  const NonSelectedImage(
      {super.key,
      required this.imageUrl,
      required this.textUrl,
      required this.ratingUrl,
      required this.textinfoUrl,
      required this.pricefoUrl,
      required this.reviewsUrl});

  final String imageUrl;
  final String textUrl;
  final String ratingUrl;
  final String textinfoUrl;
  final String pricefoUrl;
  final String reviewsUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(33)),
              child: Image.asset(
                imageUrl,
                width: 220,
                height: 260,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 170, 0, 20),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: const Color(0xFF4D5652),
                    child: SizedBox(
                      height: 35,
                      width: 120,
                      child: Row(children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(12, 10, 0, 10),
                            child: Text(textUrl,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ]),
                    ))),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 210, 0, 20),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: const Color(0xFF4D5652),
                    child: SizedBox(
                      height: 35,
                      width: 80,
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Image.asset(
                            'assets/image/star.png',
                            width: 15,
                            height: 15,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(ratingUrl,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ]),
                    ))),
          ],
        ),
      ),
    );
  }
}
