import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Додайте імпорт

class Nav extends StatelessWidget {
  const Nav({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
          child: SvgPicture.asset(
            'assets/icons/home.svg',
            width: 22,
            height: 22,
            color: const Color(0xFF176FF2),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
          child: SvgPicture.asset(
            'assets/icons/airline.svg',
            width: 20,
            height: 20,
            color: const Color(0xFFB8B8B8),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
          child: SvgPicture.asset(
            'assets/icons/heart.svg',
            width: 20,
            height: 20,
            color: const Color(0xFFB8B8B8),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: SvgPicture.asset(
            'assets/icons/user.svg',
            width: 20,
            height: 20,
            color: const Color(0xFFB8B8B8),
          ),
        ),
      ],
    );
  }
}
