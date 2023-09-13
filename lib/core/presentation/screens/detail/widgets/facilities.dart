import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FacilitiesCard extends StatelessWidget {
  const FacilitiesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: Card(
            elevation: 0,
            color: const Color.fromARGB(255, 236, 240, 247),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  16.0), // Здесь задайте радиус скругления
            ),
            child: SizedBox(
                width: 80,
                height: 80,
                child: Stack(children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/image/wifi.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('1 Heater',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: const Color(0xFFB8B8B8),
                          )),
                    ),
                  )
                ]))),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        child: Card(
            elevation: 0,
            color: const Color.fromARGB(255, 236, 240, 247),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  16.0), // Здесь задайте радиус скругления
            ),
            child: SizedBox(
                width: 80,
                height: 80,
                child: Stack(children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/image/brunch.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Dinner',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: const Color(0xFFB8B8B8),
                          )),
                    ),
                  )
                ]))),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        child: Card(
            elevation: 0,
            color: const Color.fromARGB(255, 236, 240, 247),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  16.0), // Здесь задайте радиус скругления
            ),
            child: SizedBox(
                width: 80,
                height: 80,
                child: Stack(children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/image/bathtub.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('1 Tub',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: const Color(0xFFB8B8B8),
                          )),
                    ),
                  )
                ]))),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
        child: Card(
            elevation: 0,
            color: const Color.fromARGB(255, 236, 240, 247),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  16.0), // Здесь задайте радиус скругления
            ),
            child: SizedBox(
                width: 80,
                height: 80,
                child: Stack(children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/image/pool.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Pool',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: const Color(0xFFB8B8B8),
                          )),
                    ),
                  )
                ]))),
      ),
    ]);
  }
}
