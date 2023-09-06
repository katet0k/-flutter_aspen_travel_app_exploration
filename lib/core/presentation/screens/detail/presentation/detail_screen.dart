import 'package:flutter/material.dart';
import 'package:flutter_my_information/core/presentation/screens/detail/widgets/buttom_exit.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Row(children: [
        Text('Detail Screen'),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(alignment: Alignment.topRight, child: BottonExit()),
        ),
      ])),
    );
  }
}
