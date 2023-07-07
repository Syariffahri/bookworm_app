import 'package:flutter/material.dart';

Widget iconBotNavBar({
  required IconData icon,
  required void Function()? onPressed,
}) {
  return IconButton(
    padding: EdgeInsets.zero,
    constraints: const BoxConstraints(),
    icon: Icon(
      icon,
      color: Colors.white,
    ),
    iconSize: 28,
    onPressed: onPressed,
    splashRadius: 25.0,
  );
}
