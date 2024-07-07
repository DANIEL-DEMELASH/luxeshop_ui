import 'package:ecommerce_ui/config/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/category_widget.dart';
import '../widgets/grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Image.asset(
            'assets/images/logo.webp',
            width: 30,
          ),
        ),
        title: Text(
          'Luxeshop',
          style: TextStyle(
              color: secondaryColor,
              fontFamily: 'SF Pro Display',
              fontSize: 18.0,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: tertiaryColor),
                      borderRadius: BorderRadius.circular(4)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Badge(
                        child: Image.asset(
                      'assets/images/shopping-bag.png',
                      width: 25,
                    )),
                  ))),
          IconButton(
              onPressed: () {},
              icon: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: tertiaryColor),
                      borderRadius: BorderRadius.circular(4)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Badge(
                        child: Image.asset(
                      'assets/images/notification-bell.png',
                      width: 25,
                    )),
                  ))),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 45,
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
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: secondaryColor, width: 0.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: tertiaryColor,
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
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 40,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/location-small.png',
                          height: 20,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              style: TextStyle(
                                color: tertiaryColor,
                                fontFamily: 'SF Pro Display',
                              ),
                              text: 'Deliver to ',
                              children: [
                                TextSpan(
                                  text:
                                      'Jl. Rose No. 123 Block A, Cipete Sub-District, Cipete Sub-District',
                                  style: TextStyle(
                                    color: secondaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoryWidget(
                          text: 'Electronic',
                          imageUrl: 'assets/images/electronics.png',
                        ),
                        CategoryWidget(
                          text: 'Food & Drink',
                          imageUrl: 'assets/images/food-and-drink.png',
                        ),
                        CategoryWidget(
                          text: 'Accesories',
                          imageUrl: 'assets/images/accesories.png',
                        ),
                        CategoryWidget(
                          text: 'Beauty',
                          imageUrl: 'assets/images/makeup.png',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoryWidget(
                          text: 'Furniture',
                          imageUrl: 'assets/images/furniture.png',
                        ),
                        CategoryWidget(
                          text: 'Fashion',
                          imageUrl: 'assets/images/fashion.png',
                        ),
                        CategoryWidget(
                          text: 'Health',
                          imageUrl: 'assets/images/health.png',
                        ),
                        CategoryWidget(
                          text: 'Stationary',
                          imageUrl: 'assets/images/stationery.png',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      image: const DecorationImage(
                        image: AssetImage('assets/images/container-bg.jpg'),
                        repeat: ImageRepeat.repeatX,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 20, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                '6.6 Flash Sale',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Text(
                                'Cashback Up to 100%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 4),
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  'Shop Now',
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset('assets/images/pink-hoodie.png'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Flash Sale',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              color: secondaryColor,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Ends in',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: tertiaryColor,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 4),
                            decoration: BoxDecoration(
                              color: pinkColor,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text(
                              '12 : 56 : 32',
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: primaryColor,
                          fontFamily: 'SF Pro Display',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: .7,
                children: const [
                  GridItem(
                    imageUrl: 'assets/images/apple-ipad-pro-11-2022.jpg',
                    discount: 6,
                    name: 'Ipad Pro 6th Generation 11 Inch',
                    price: 'IDR 16.999.000',
                    discountPrice: 'IDR 15.299.000',
                  ),
                  GridItem(
                    imageUrl: 'assets/images/macbook.webp',
                    discount: 10,
                    name: 'Macbook Air M2 (2022) 13 inch',
                    price: 'IDR 19.485.908',
                    discountPrice: 'IDR 17.537.317',
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          )
        ],
      ),
    );
  }
}
