import 'package:barcode_app/app/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/router.dart';

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
      body: Stack(
        children: [
          Image.asset(
            'assets/videos/splash_screen.gif',
            width: Get.width,
            height: Get.height,
            fit: BoxFit.fitHeight,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Selamat datang',
              style: AppTextTheme.textTheme.displayLarge,
            ),
          ),
        ],
      ),
    );
  }
}
