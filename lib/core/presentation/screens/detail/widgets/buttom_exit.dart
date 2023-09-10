import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class BottonExit extends StatelessWidget {
  const BottonExit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: ElevatedButton(
            onPressed: () => Get.toNamed('/main'),
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(20, 55),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              primary: Colors.white,
            ),
            child: const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 15, 10),
                child: Icon(
                  Icons.keyboard_arrow_left_sharp,
                  color: Color(0xFFB8B8B8),
                  size: 30,
                ),
              ),
            )));
  }
}
