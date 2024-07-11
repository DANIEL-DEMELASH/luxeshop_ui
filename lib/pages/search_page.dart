import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../config/constants.dart';
import '../widgets/grid_item.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: tertiaryColor,
              child: CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_back,
                    color: secondaryColor,
                  )),
            ),
          ),
        ),
        title: Container(
          height: 40,
          margin: const EdgeInsets.only(right: 10),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintText: 'Find you needed..',
              hintStyle: TextStyle(
                color: tertiaryColor,
                fontSize: 14,
                fontFamily: 'SF Pro Display',
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: tertiaryColor,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: secondaryColor, width: 0.5),
                borderRadius: BorderRadius.circular(4),
              ),
              prefixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: tertiaryColor,
                ),
              ),
              labelStyle: TextStyle(
                fontFamily: 'SF Pro Display',
                color: secondaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.filter_list,
                    color: tertiaryColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Popular Search',
                style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    color: secondaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    padding: const EdgeInsets.only(
                        left: 10, top: 12, bottom: 12, right: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: containerBorderColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/fossil-watch.jpeg',
                          width: 40,
                          height: double.infinity,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Fossil Watch',
                          style: TextStyle(
                              color: secondaryColor,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    padding: const EdgeInsets.only(
                        left: 10, top: 12, bottom: 12, right: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: containerBorderColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/apple-iphone-14-pro.jpg',
                          width: 40,
                          height: double.infinity,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Iphone 14 Pro',
                          style: TextStyle(
                              color: secondaryColor,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width / 2.4,
                    padding: const EdgeInsets.only(
                        left: 10, top: 12, bottom: 12, right: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: containerBorderColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/gaming-chair.png',
                          width: 30,
                          height: double.infinity,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Gaming Chair',
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: secondaryColor,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    padding: const EdgeInsets.only(
                        left: 10, top: 12, bottom: 12, right: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: containerBorderColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/new-balance.png',
                          width: 40,
                          height: double.infinity,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          'New Balance',
                          style: TextStyle(
                              color: secondaryColor,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                'Recommend for You',
                style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    color: secondaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              const SizedBox(height: 12),
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                children: const [
                  GridItem(
                    imageUrl: 'assets/images/t-shirt.png',
                    discount: 0,
                    name: 'Uniqlo Basic T-shirt Oversized White',
                    price: 'IDR 200.000',
                    discountPrice: '',
                  ),
                  GridItem(
                    imageUrl: 'assets/images/new-balance-sneaker.webp',
                    discount: 15,
                    name: 'New Balance 550 Men\'s Sneakers Shoes - Beige',
                    price: 'IDR 2.109.000',
                    discountPrice: 'IDR 1.792.650',
                  ),
                  GridItem(
                    imageUrl: 'assets/images/apple-watch-alphine.png',
                    discount: 7,
                    name: 'Apple Watch Ultra 2 with Alpine Loop',
                    price: 'IDR 15.999.000',
                    discountPrice: 'IDR 14,879,070',
                  ),
                  GridItem(
                    imageUrl: 'assets/images/nike-dri-woven.webp',
                    discount: 0,
                    name: 'Nike Dri-FIT Academy woven',
                    price: 'IDR 400.000',
                    discountPrice: '',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
