import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFF3F8FE),
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(30.0), // Здесь задайте радиус скругления
      ),
      child: SizedBox(
        width: 360,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Image.asset(
                    'assets/image/loupe.png',
                    width: 20,
                    height: 20,
                  ),
                )),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 12, 0, 10),
                  child: Text(
                    'Find things to do',
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      color: const Color(0xFFB8B8B8),
                      textStyle: Theme.of(context).textTheme.headlineMedium,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
