import 'package:flutter/material.dart';
import 'package:flutter_my_information/core/presentation/screens/detail/presentation/detail_screen.dart';
import 'package:flutter_my_information/core/presentation/screens/intro/precentation/intro_screen.dart';
import 'package:flutter_my_information/core/presentation/screens/main/presentation/main_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'utils/bindings.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binds(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/intro',
      getPages: [
        GetPage(name: '/intro', page: () => const IntroScreen()),
        GetPage(name: '/main', page: () => const MainScreen()),
        GetPage(name: '/detail', page: () => const DetailScreen()),
      ],
    );
  }
}
