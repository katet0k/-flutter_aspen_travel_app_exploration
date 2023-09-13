import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NonSelectedItem1 extends StatelessWidget {
  const NonSelectedItem1(
      {super.key, required this.imageUrl, required this.textUrl});

  final String imageUrl;
  final String textUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: SizedBox(
            width: 220,
            height: 170,
            child: Stack(children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(13)),
                      child: Image.network(
                        imageUrl,
                        width: 210,
                        height: 110,
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 10, 0),
                  child: Card(
                    color: const Color(0xFF3A544F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      side: const BorderSide(color: Colors.white, width: 3),
                    ),
                    child: const SizedBox(
                      width: 50,
                      height: 25,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '4N/5D',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 30),
                  child: Text(
                    textUrl,
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 6),
                  child: Row(children: [
                    Image.asset(
                      'assets/image/trendUp.png',
                      width: 15,
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Hot Deal',
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ])));
  }
}
