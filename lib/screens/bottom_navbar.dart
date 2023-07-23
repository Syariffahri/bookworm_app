// ignore_for_file: sort_child_properties_last

import 'dart:io';

import 'package:barcode_app/app/colors/app_colors.dart';
import 'package:barcode_app/screens/checkout.dart';
import 'package:barcode_app/screens/profile.dart';
import 'package:barcode_app/screens/search.dart';
import 'package:barcode_app/widgets/icon_botnavbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../app/utils/notched_bottom_appbar.dart';
import 'home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int _bottomNavIndex = 0;

  static const List _pages = [
    Home(),
    SearchScreen(),
    CheckoutScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages.elementAt(_bottomNavIndex),
        ],
      ),
      floatingActionButton: Container(
        width: 75,
        height: 75,
        margin: const EdgeInsets.only(top: 30),
        child: FittedBox(
          child: FloatingActionButton(
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    AppColors.secondaryLight,
                    AppColors.secondaryDark,
                  ],
                  stops: const [
                    0.2,
                    1.0,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Icon(
                IconlyBold.scan,
                size: 35,
                color: Colors.white,
              ),
            ),
            onPressed: () => Get.toNamed('/barcodeScan'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: BottomAppBar(
              // padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              padding: EdgeInsets.fromLTRB(
                30,
                15,
                30,
                Platform.isAndroid ? 15 : 0,
              ),
              color: AppColors.primary,
              shape: CustomCircularNotchedRectangle(
                notchOffset: const Offset(-19, 0),
              ),
              notchMargin: 8.0,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  iconBotNavBar(
                      icon: _bottomNavIndex == 0
                          ? IconlyBold.home
                          : IconlyLight.home,
                      onPressed: () {
                        setState(() => _bottomNavIndex = 0);
                      }),
                  iconBotNavBar(
                      icon: _bottomNavIndex == 1
                          ? IconlyBold.search
                          : IconlyLight.search,
                      onPressed: () {
                        setState(() => _bottomNavIndex = 1);
                      }),
                  const Icon(Icons.abc, color: Colors.transparent, size: 35),
                  iconBotNavBar(
                      icon: _bottomNavIndex == 2
                          ? IconlyBold.bag
                          : IconlyLight.bag,
                      onPressed: () {
                        setState(() => _bottomNavIndex = 2);
                      }),
                  iconBotNavBar(
                      icon: _bottomNavIndex == 3
                          ? IconlyBold.profile
                          : IconlyLight.profile,
                      onPressed: () {
                        setState(() => _bottomNavIndex = 3);
                      }),
                ],
              )),
        ),
      ),
    );
  }
}



//  activeIndex: _bottomNavIndex,
//           gapLocation: GapLocation.center,
//           notchSmoothness: NotchSmoothness.softEdge,
//           // leftCornerRadius: 20,
//           // rightCornerRadius: 20,
//           iconSize: 35,
//           elevation: 0,
//           onTap: (index) => setState(
//             () => _bottomNavIndex = index,
//           ),
//           // height: 75,

//           backgroundColor: Colors.transparent,
//           activeColor: Colors.white,
//           inactiveColor: Colors.white,