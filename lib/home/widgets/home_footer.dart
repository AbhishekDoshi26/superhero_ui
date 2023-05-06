import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_extensions/super_extensions.dart';

class HomeFooterWidget extends StatelessWidget {
  const HomeFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 80,
      left: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.pink.shade300,
                  shape: BoxShape.circle,
                ),
                height: 25,
                width: 25,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                height: 10,
                width: 10,
              ),
            ],
          ),
          10.hSizedBox,
          Text(
            'Start',
            style: GoogleFonts.roboto(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          Row(
            children: [
              Text(
                'Exploring',
                style: GoogleFonts.roboto(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
              20.wSizedBox,
              const _CircleButton(),
            ],
          ),
        ],
      ),
    );
  }
}

class _CircleButton extends StatelessWidget {
  const _CircleButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.pink.shade300,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(10),
      child: const Icon(Icons.arrow_right_alt_sharp),
    );
  }
}
