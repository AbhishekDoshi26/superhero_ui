import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    required this.icon,
    required this.url,
    super.key,
  });

  final String url;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: IconButton(
        onPressed: () {
          launchUrl(
            Uri.parse(url),
          );
        },
        icon: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
