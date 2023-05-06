import 'package:flutter/material.dart';
import 'package:superhero_ui/home/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Route route() => MaterialPageRoute(
        builder: (context) => const HomePage(),
      );

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}
