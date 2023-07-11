import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../app/colors/app_colors.dart';
import '../app/theme/text_theme.dart';

Widget starWidget() {
  return Row(
    children: [
      Container(
        height: 30,
        margin: const EdgeInsets.only(right: 5),
        child: ListView.builder(
          itemCount: 5,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Icon(
              IconlyBold.star,
              color: AppColors.starColor,
            );
          },
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 5),
        child: Text(
          '4.8',
          style: AppTextTheme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
