import 'package:barcode_app/app/colors/app_colors.dart';
import 'package:barcode_app/app/theme/text_theme.dart';
import 'package:barcode_app/widgets/best_seller_widget.dart';
import 'package:barcode_app/widgets/custom_button.dart';
import 'package:barcode_app/widgets/highlight_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 22),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
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
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'How many books have you read?',
              style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                color: AppColors.primary.withOpacity(0.6),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: highlightWidget(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
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
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
              itemCount: 1,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: categoriesList
                      .map(
                        (e) => Container(
                          height: 65,
                          margin: const EdgeInsets.only(right: 12),
                          child: customButton(
                            text: e['title'],
                            icon: e['icon'],
                            isActive: e['active'],
                            onPressed: () {
                              setState(() {
                                e['active'] = !e['active'];
                              });
                            },
                          ),
                        ),
                      )
                      .toList(),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            margin: const EdgeInsets.only(top: 20, bottom: 15),
            child: Text(
              'Best Seller',
              style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ),
          bestSellerWidget(),
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

List<Map> categoriesList = [
  {
    'title': 'Self Improvement',
    'icon': 'self_icon.png',
    'active': true,
  },
  {
    'title': 'Islam',
    'icon': 'islam_icon.png',
    'active': false,
  },
  {
    'title': 'History',
    'icon': 'quill_icon.png',
    'active': false,
  },
];
