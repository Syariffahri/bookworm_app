import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/colors/app_colors.dart';
import '../app/theme/text_theme.dart';

Widget homeCard({
  required String title,
  required String navigateName,
}) {
  return Container(
    width: Get.width,
    margin: const EdgeInsets.symmetric(horizontal: 10),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: AppColors.cardColor,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextTheme.textTheme.headline1,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            onPressed: (() => Get.toNamed(navigateName)),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: AppColors.btnColor,
            ),
            child: const Text(
              'Selanjutnya',
            ),
          ),
        ),
      ],
    ),
  );
}
