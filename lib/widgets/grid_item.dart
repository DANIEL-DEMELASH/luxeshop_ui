import 'package:ecommerce_ui/pages/product_detail_page.dart';
import 'package:flutter/material.dart';

import '../config/constants.dart';

class GridItem extends StatelessWidget {
  final String imageUrl;
  final int discount;
  final String name;
  final String price;
  final String? discountPrice;
  const GridItem({
    super.key,
    required this.imageUrl,
    required this.discount,
    required this.name,
    required this.price,
    this.discountPrice,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProductDetail()));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 15),
        decoration: BoxDecoration(
          border: Border.all(color: tertiaryColor, width: 1.0),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: Alignment.center,
              child: Stack(children: [
                SizedBox(
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Image.asset(imageUrl),
                  ),
                ),
                if (discount > 0)
                  Positioned(
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: blurredPinkColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                          '$discount% off',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display', color: pinkColor),
                        ),
                      ))
              ]),
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              child: Text(
                name,
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 12,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              price,
              style: TextStyle(
                  color: discount > 0 ? tertiaryColor : secondaryColor,
                  fontSize: discount > 0 ? 14 : 16,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  decoration: discount > 0
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  decorationColor: tertiaryColor),
            ),
            const SizedBox(
              height: 4,
            ),
            if (discount > 0)
              Text(
                discountPrice ?? '',
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500),
              ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/star.png',
                  width: 12,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '4.9',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      color: secondaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
                const SizedBox(
                  width: 4,
                ),
                CircleAvatar(
                  radius: 3,
                  backgroundColor: grayColor,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '518 sold',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      color: secondaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/location-small.png',
                  width: 14,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Surabaya',
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    color: secondaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
