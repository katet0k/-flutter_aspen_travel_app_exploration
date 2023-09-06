import 'package:flutter/material.dart';
import 'package:flutter_my_information/core/presentation/screens/main/widgets/dropdown_button.dart';
import 'package:flutter_my_information/core/presentation/screens/main/widgets/list_bar_category/list_bar.dart';
import 'package:flutter_my_information/core/presentation/screens/main/widgets/list_bar_popular/list_bar_popular.dart';
import 'package:flutter_my_information/core/presentation/screens/main/widgets/list_bar_recommended/list_bar_recommended.dart';
import 'package:flutter_my_information/core/presentation/screens/main/widgets/search.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
              child: Text(
                'Explore',
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  color: Colors.black,
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
              child: Text(
                'Aspen',
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  color: Colors.black,
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 28, 20, 0),
              child: DropDownMenu(),
            ),
          ),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 28, 135, 0),
                child: Image.asset(
                  'assets/image/location.png',
                  width: 20,
                  height: 20,
                ),
              )),
          const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 110, 20, 0),
                child: Search(),
              )),
          const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 220, 20, 0),
                child: ListBar(),
              )),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 310, 0, 0),
              child: Text(
                'Popular',
                style: GoogleFonts.montserrat(
                  fontSize: 19,
                  color: Colors.black,
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 350, 0, 0),
            child: ListBarPopular(),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 650, 0, 0),
              child: Text(
                'Recommended',
                style: GoogleFonts.montserrat(
                  fontSize: 19,
                  color: Colors.black,
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 700, 0, 0),
            child: ListBarRecommended(),
          ),
        ],
      ),
    );
  }
}
