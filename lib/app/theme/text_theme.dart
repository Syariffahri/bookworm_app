import 'package:barcode_app/app/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme textTheme = TextTheme(
    bodyText1: GoogleFonts.plusJakartaSans(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColors.textColor,
    ),
    bodyText2: GoogleFonts.plusJakartaSans(
      //default body
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: AppColors.textColor,
    ),
    subtitle1: GoogleFonts.plusJakartaSans(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.textColor,
    ),
    subtitle2: GoogleFonts.plusJakartaSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.subtitleColor,
    ),
    headline1: GoogleFonts.plusJakartaSans(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: AppColors.textColor,
    ),
    button: GoogleFonts.plusJakartaSans(
        fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
  );
}
