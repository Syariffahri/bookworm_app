import 'package:barcode_app/app/colors/app_colors.dart';
import 'package:barcode_app/widgets/custom_button.dart';
import 'package:barcode_app/widgets/star_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../app/theme/text_theme.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            // no Listview hehe
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Ink(
                width: Get.width,
                height: Get.height * 0.42,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/book_cover.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customIconButton(
                      icon: IconlyLight.arrow_left_2,
                      onTap: () => Get.back(),
                    ),
                    customIconButton(
                      icon: IconlyBold.bag,
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: const EdgeInsets.only(top: 20, left: 10, bottom: 20),
                decoration: BoxDecoration(
                  color: AppColors.categoriesColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text('Best Seller'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Kamu Gak Sendiri',
                    style: AppTextTheme.textTheme.bodyLarge!.copyWith(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  customIconButton(
                    icon: IconlyBold.heart,
                    onTap: () {},
                  ),
                ],
              ),
              Row(
                children: [
                  starWidget(),
                  const SizedBox(width: 5),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: const Text('(30 reviews)'),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 25, bottom: 10),
                child: Text(
                  'Descriptions',
                  style: AppTextTheme.textTheme.bodyLarge,
                ),
              ),
              Text(
                "We're good enough to make people think we're okay. Now is the time to be honest, who is disappointed, who is tired, who doesn't know when to rest, can be angry, can cry, can if you want to be alone first. It's okay to need help. You don't have to be fine. It's okay, it's okay, accept it, admit it, let it go.",
                textAlign: TextAlign.justify,
                style: AppTextTheme.textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Price',
                      style: AppTextTheme.textTheme.titleSmall,
                    ),
                    Text(
                      "\$ 10.00",
                      style: AppTextTheme.textTheme.bodyLarge!.copyWith(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: Get.width * 0.5,
                  height: 70,
                  child: customButton(
                    text: 'Buy Now',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
