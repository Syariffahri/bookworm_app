import 'package:barcode_app/app/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget emptyWidget() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Not Found,'),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Follow my '),
            GestureDetector(
              onTap: () {
                launchUrl(
                  Uri.parse(
                    'https://linktr.ee/syariffahri',
                  ),
                  mode: LaunchMode.externalApplication,
                ).catchError((e) {
                  return e;
                });
              },
              child: Text(
                'Social Media',
                style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
