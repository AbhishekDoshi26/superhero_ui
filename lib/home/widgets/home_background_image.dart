import 'package:flutter/material.dart';

class HomeBackgroundImage extends StatelessWidget {
  const HomeBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/background.jpeg",
      fit: BoxFit.cover,
    );
  }
}
