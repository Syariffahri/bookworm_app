import 'package:barcode_app/app/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme textTheme = TextTheme(
    bodyLarge: GoogleFonts.plusJakartaSans(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColors.textColor,
    ),
    bodyMedium: GoogleFonts.plusJakartaSans(
      //default body
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: AppColors.textColor,
    ),
    titleMedium: GoogleFonts.plusJakartaSans(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.textColor,
    ),
    titleSmall: GoogleFonts.plusJakartaSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.subtitleColor,
    ),
    displayLarge: GoogleFonts.plusJakartaSans(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: AppColors.textColor,
    ),
    labelLarge: GoogleFonts.plusJakartaSans(
        fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
  );
}
