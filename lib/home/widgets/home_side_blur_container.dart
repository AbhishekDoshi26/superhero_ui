import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_extensions/super_extensions.dart';
import 'package:superhero_ui/home/home.dart';
import 'package:superhero_ui/utils/utils.dart';

class HomeSideBlurContainer extends StatelessWidget {
  const HomeSideBlurContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: context.screenHeight,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 30,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: RotatedBox(
              quarterTurns: 3,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const SocialIcon(
                      icon: FontAwesomeIcons.github,
                      url: StringConstants.githubUrl,
                    ),
                    10.wSizedBox,
                    const SocialIcon(
                      icon: FontAwesomeIcons.linkedinIn,
                      url: StringConstants.linkedinUrl,
                    ),
                    10.wSizedBox,
                    const SocialIcon(
                      icon: FontAwesomeIcons.twitter,
                      url: StringConstants.twitterUrl,
                    ),
                    (context.screenWidth / 4).wSizedBox,
                    const _DateWidget(),
                    50.wSizedBox,
                    const _LocationWidget(),
                    50.wSizedBox,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LocationWidget extends StatelessWidget {
  const _LocationWidget();

  @override
  Widget build(BuildContext context) {
    final cityName = context.select((HomeBloc bloc) => bloc.state.cityName);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            color: Colors.black.withOpacity(0.7),
            size: 15,
          ),
          5.wSizedBox,
          Text(
            cityName.toUpperCase(),
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}

class _DateWidget extends StatelessWidget {
  const _DateWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Today's",
          style: GoogleFonts.damion(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          DateHelper.getDay(DateTime.now().weekday),
          style: GoogleFonts.damion(
            fontWeight: FontWeight.w900,
            fontSize: 40,
          ),
        ),
        Row(
          children: [
            Container(
              width: 40,
              color: Colors.black.withOpacity(0.6),
              height: 2,
            ),
            3.wSizedBox,
            Text(
              ' ${DateTime.now().day} ${DateHelper.getMonth(DateTime.now().month).toUpperCase()}',
              style: GoogleFonts.oswald(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
