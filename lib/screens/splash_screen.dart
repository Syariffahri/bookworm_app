import 'package:barcode_app/app/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/colors/app_colors.dart';
import '../app/routes/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 1),
      () {
        Get.offAllNamed(AppRoutes.bottomNavBar);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Book',
              style: AppTextTheme.textTheme.displayLarge!.copyWith(
                color: AppColors.bookTextColor,
                fontSize: 42,
              ),
            ),
            Text(
              'worm',
              style: AppTextTheme.textTheme.displayLarge!.copyWith(
                fontSize: 42,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
