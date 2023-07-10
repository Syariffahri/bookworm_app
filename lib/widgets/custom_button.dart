import 'package:flutter/material.dart';

import '../app/colors/app_colors.dart';
import '../app/theme/text_theme.dart';

Widget customButton({
  required String text,
  required void Function()? onPressed,
  String? icon,
  bool isActive = true,
}) {
  return Container(
    height: 40,
    margin: const EdgeInsets.only(top: 15),
    decoration: BoxDecoration(
      gradient: isActive
          ? LinearGradient(
              colors: [
                AppColors.buttonLightColor,
                AppColors.buttonDarkColor,
              ],
              stops: const [
                0.2,
                1.0,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
          : null,
      borderRadius: BorderRadius.circular(16),
    ),
    child: TextButton.icon(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor:
            isActive ? Colors.transparent : AppColors.categoriesColor,
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 15,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      icon: icon == null
          ? const SizedBox.shrink()
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/icons/$icon'),
                ),
              ),
            ),
      label: Text(
        text,
        style: AppTextTheme.textTheme.bodyMedium!.copyWith(
          color: isActive ? Colors.white : AppColors.textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
