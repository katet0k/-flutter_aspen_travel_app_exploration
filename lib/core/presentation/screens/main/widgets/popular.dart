import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          items: [
            // Перше фото, видиме за замовчуванням
            Container(
              margin: const EdgeInsets.all(5.0), // Відстань між фотографіями
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), // Заокруглення країв
              ),
              child: Image.network(
                'assets/popular/2.jpg',
              ),
            ),
            // Друге фото, видиме за замовчуванням
            Container(
              margin: const EdgeInsets.all(5.0), // Відстань між фотографіями
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), // Заокруглення країв
              ),
              child: Image.network('assets/popular/2.jpg'),
            ),
            // Третє фото, буде видно після прокрутки
            Container(
              margin: const EdgeInsets.all(5.0), // Відстань між фотографіями
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), // Заокруглення країв
              ),
              child: Image.network('assets/popular/2.jpg'),
            ),
          ],
          options: CarouselOptions(
            // Кількість фотографій, які будуть видимі одночасно
            aspectRatio: 16 / 9,
            viewportFraction: 2 / 3,
          ),
        ),
      ),
    );
  }
}
