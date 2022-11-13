import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_app/src/shared/utils/app_colors.dart';

class CustomTextTheme {
  static final TextTheme textTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
        fontSize: 97,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: Colors.white),
    headline2: GoogleFonts.montserrat(
        fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3:
        GoogleFonts.montserrat(fontSize: 48, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.montserrat(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: AppColors.deepPurple),
    headline5: GoogleFonts.montserrat(
        fontSize: 24, fontWeight: FontWeight.w400, letterSpacing: 2),
    headline6: GoogleFonts.montserrat(
        fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.montserrat(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.montserrat(
        fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.2),
    bodyText1: GoogleFonts.montserrat(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.5),
    bodyText2: GoogleFonts.montserrat(
        fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.montserrat(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.montserrat(
        fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.montserrat(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );
}
