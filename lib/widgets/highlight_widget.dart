import 'package:barcode_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/colors/app_colors.dart';
import '../app/theme/text_theme.dart';

Widget highlightWidget() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          AppColors.primary,
          Colors.black.withOpacity(0.5),
        ],
        stops: const [
          0.52,
          1.0,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(24),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Free Shipping',
                style: AppTextTheme.textTheme.bodyLarge!.copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'Worldwide ',
                    style: AppTextTheme.textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Books',
                    style: AppTextTheme.textTheme.bodyLarge!.copyWith(
                      color: AppColors.secondaryDark,
                    ),
                  ),
                ],
              ),
              customButton(
                text: 'Buy Now',
                onPressed: () {},
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/images/illustration.png',
          width: Get.width * 0.4,
        ),
      ],
    ),
  );
}
