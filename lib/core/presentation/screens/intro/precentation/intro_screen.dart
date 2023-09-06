import 'package:flutter/material.dart';
import 'package:flutter_my_information/core/presentation/screens/intro/widgets/center_button.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/backgrounds/intro2.jpg',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
              child: Text('Aspen',
                  style: GoogleFonts.ooohBaby(
                      fontSize: 130,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            )),
        const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: CenterButton(),
            )),
        Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 0, 230),
              child: Text('Plan your',
                  style: GoogleFonts.montserrat(
                      fontSize: 30, color: Colors.white)),
            )),
        Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 10, 110),
              child: Text('Luxurious Vacation',
                  style: GoogleFonts.montserrat(
                      fontSize: 50, color: Colors.white)),
            )),
      ],
    ));
  }
}
