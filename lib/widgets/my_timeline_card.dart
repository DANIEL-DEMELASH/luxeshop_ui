import 'package:flutter/material.dart';

import '../config/constants.dart';

class MyTimelineCard extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String time;
  const MyTimelineCard({
    super.key,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, top: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: secondaryColor,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  description,
                  style: TextStyle(
                      color: tertiaryColor,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      fontSize: 11),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: TextStyle(
                      color: tertiaryColor,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      fontSize: 11),
                ),
                Text(
                  time,
                  style: TextStyle(
                      color: tertiaryColor,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      fontSize: 11),
                ),
              ],
            )
          ],
        ));
  }
}
