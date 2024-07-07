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
          children: [
            Stack(children: [
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
            Text(
              name,
              style: TextStyle(
                  color: tertiaryColor,
                  fontSize: 12,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis),
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
            Text(
              price,
              style: TextStyle(
                  color: discount > 0 ? tertiaryColor : secondaryColor,
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  decoration: discount > 0
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  decorationColor: tertiaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
