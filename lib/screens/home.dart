import 'package:barcode_app/app/colors/app_colors.dart';
import 'package:barcode_app/app/theme/text_theme.dart';
import 'package:barcode_app/widgets/custom_button.dart';
import 'package:barcode_app/widgets/highlight_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

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
                      .map((e) => Container(
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
                          ))
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
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
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
                          Row(
                            children: [
                              Container(
                                height: 30,
                                margin: const EdgeInsets.only(right: 5),
                                child: ListView.builder(
                                  itemCount: 5,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
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
                                  style: AppTextTheme.textTheme.bodyMedium!
                                      .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                                  style: AppTextTheme.textTheme.bodyLarge!
                                      .copyWith(
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
