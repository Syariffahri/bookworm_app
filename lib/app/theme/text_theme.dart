import 'package:barcode_app/app/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme textTheme = TextTheme(
    bodyLarge: GoogleFonts.mulish(
      fontSize: 18,
      fontWeight: FontWeight.w800,
      color: AppColors.textColor,
    ),
    bodyMedium: GoogleFonts.mulish(
      //default body
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: AppColors.textColor,
    ),
    titleMedium: GoogleFonts.mulish(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.textColor,
    ),
    titleSmall: GoogleFonts.mulish(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.greyBoldColor,
    ),
    displayLarge: GoogleFonts.mulish(
      fontSize: 37,
      fontWeight: FontWeight.w800,
      color: AppColors.textColor,
    ),
    labelLarge: GoogleFonts.mulish(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  );
}
