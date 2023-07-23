import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/theme/app_theme.dart';
import 'app/routes/router.dart';

/*

//-----Coding with Fahri------//

Github    : https://github.com/Syariffahri
Linkedin  : Syarif Muhammad Fahri
Instagram : @syariffahrii
Youtube   : Coding with Fahri


*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashScreen,
      getPages: AppRoutes.routes,
      theme: AppTheme.myTheme,
    );
  }
}
