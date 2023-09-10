import 'package:flutter/material.dart';
import 'package:flutter_my_information/core/presentation/screens/detail/widgets/bottom_book_now.dart';
import 'package:flutter_my_information/core/presentation/screens/detail/widgets/buttom_exit.dart';
import 'package:flutter_my_information/core/presentation/screens/detail/widgets/combined_widget.dart';
import 'package:flutter_my_information/core/presentation/screens/detail/widgets/facilities.dart';
import 'package:flutter_my_information/core/presentation/screens/detail/widgets/price.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Align(
            alignment: Alignment.topCenter,
            child: CombinedWidget(),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
            child: Text(
              'Show map',
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: const Color(0xFF176FF2),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
              child: BottonExit(),
            )),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 400, 0, 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Facilities',
              style: GoogleFonts.montserrat(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
              child: FacilitiesCard(),
            )),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 50),
            child: Text(
              'Price',
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 20),
              child: BookNowBottom(),
            )),
        const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 20),
              child: Price(),
            ))
      ]),
    );
  }
}
