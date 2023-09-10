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
            width: 210,
            height: 220,
            child: Stack(children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(1, 0, 1, 110),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(13)),
                      child: Image.network(
                        imageUrl,
                        width: 200,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 20),
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
                        )),
                  ),
                ),
              )
            ])));
  }
}
