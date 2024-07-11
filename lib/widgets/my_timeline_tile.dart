import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../config/constants.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final Widget timelineCard;
  const MyTimelineTile(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      required this.timelineCard});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
            color: isPast ? primaryColor : containerBorderColor, thickness: 3),
        indicatorStyle: IndicatorStyle(
            width: 25,
            color: containerBorderColor,
            iconStyle: IconStyle(
              iconData: Icons.circle,
              color: isPast ? primaryColor : Colors.white,
            )),
        endChild: timelineCard,
      ),
    );
  }
}
