import 'package:flutter/material.dart';
import 'package:superhero_ui/home/home.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: const [
          HomeBackgroundImage(),
          HomeSideBlurContainer(),
          HomeFooterWidget(),
        ],
      ),
    );
  }
}
