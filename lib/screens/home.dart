import 'package:barcode_app/widgets/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconlyLight.setting,
            ),
            splashRadius: 20.0,
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
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
