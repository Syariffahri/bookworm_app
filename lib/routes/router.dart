import 'package:barcode_app/screens/barcode.dart';
import 'package:barcode_app/screens/home.dart';
import 'package:get/get.dart';

import '../screens/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash';
  static const String home = '/home';
  static const String barcode = '/barcodeScan';

  static List<GetPage> routes = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: home,
      page: () => const Home(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: barcode,
      page: () => const BarcodeScan(),
      transitionDuration: const Duration(milliseconds: 400),
      transition: Transition.rightToLeft,
    ),
  ];
}
