import 'package:flutter/material.dart';

class NonSelectedItem1 extends StatelessWidget {
  const NonSelectedItem1({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        color: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(16.0), // Здесь задайте радиус скругления
        ),
        child: SizedBox(
            width: MediaQuery.of(context).size.width - 200,
            height: MediaQuery.of(context).size.height - 30,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(1, 0, 1, 30),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      child: Image.network(
                        imageUrl,
                        width: 200,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
            ])));
  }
}
