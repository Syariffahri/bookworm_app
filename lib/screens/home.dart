import 'package:barcode_app/app/colors/app_colors.dart';
import 'package:barcode_app/app/theme/text_theme.dart';
import 'package:barcode_app/widgets/highlight_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 76,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/icons/menu_icon.png',
            width: 26,
          ),
          splashRadius: 20.0,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: CircleAvatar(
              backgroundColor: AppColors.secondaryDark,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(25),
        children: [
          Row(
            children: [
              Text(
                'Book',
                style: AppTextTheme.textTheme.displayLarge!.copyWith(
                  color: AppColors.bookTextColor,
                ),
              ),
              Text(
                'worm',
                style: AppTextTheme.textTheme.displayLarge,
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            'How many books have you read?',
            style: AppTextTheme.textTheme.bodyMedium!.copyWith(
              color: AppColors.primary.withOpacity(0.6),
            ),
          ),
          highlightWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'see more',
                  style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                    color: AppColors.secondaryDark,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
        // children: cardList
        //     .map(
        //       (e) => homeCard(
        //         title: e['title'],
        //         navigateName: e['onPressed'],
        //       ),
        //     )
        //     .toList(),
      ),
    );
  }
}

List<Map> cardList = [
  {
    'title': 'SCAN QR',
    'onPressed': '/barcodeScan',
  },
];
