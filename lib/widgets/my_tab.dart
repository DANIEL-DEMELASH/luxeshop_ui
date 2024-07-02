import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  const MyTab({
    super.key,
    required this.title,
    required this.iconUrl,
  });
  final String title;
  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    return Tab(
      text: title,
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Image.asset(
          iconUrl,
          width: 25,
        ),
      ),
    );
  }
}
