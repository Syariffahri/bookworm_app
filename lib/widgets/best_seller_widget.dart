import 'package:barcode_app/widgets/star_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../app/theme/text_theme.dart';

Widget bestSellerWidget() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 25),
    child: GestureDetector(
      onTap: () => Get.toNamed('/detail'),
      child: Ink(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 3.0,
              spreadRadius: 3.0,
              offset: const Offset(0.0, 1.5),
            ),
          ],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/book_cover.png',
                  ),
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            Flexible(
              child: Container(
                margin: const EdgeInsets.only(top: 5, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kamu Gak Sendiri',
                      style: AppTextTheme.textTheme.bodyLarge!.copyWith(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    starWidget(),
                    const SizedBox(height: 10),
                    Text(
                      'Syarif Muhammad Fahri',
                      style: AppTextTheme.textTheme.titleSmall,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$ 10.00",
                            style: AppTextTheme.textTheme.bodyLarge!.copyWith(
                              fontSize: 25,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(16),
                            child: Ink(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    blurRadius: 10.0,
                                    spreadRadius: 7.0,
                                    offset: const Offset(0.0, 1.0),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Icon(
                                IconlyBold.bag,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
