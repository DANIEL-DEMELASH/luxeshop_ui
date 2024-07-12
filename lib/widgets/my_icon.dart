import 'package:flutter/material.dart';

import '../config/constants.dart';

class MyIcon extends StatelessWidget {
  final Widget icon;
  const MyIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: tertiaryColor),
            borderRadius: BorderRadius.circular(4)),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Badge(child: icon),
        ));
  }
}
