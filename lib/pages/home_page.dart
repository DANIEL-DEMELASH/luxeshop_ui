import 'package:ecommerce_ui/config/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Find you needed..',
                  hintStyle: TextStyle(
                      color: tertiaryColor, fontFamily: 'SF Pro Display'),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: tertiaryColor,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor, width: 0.5),
                      borderRadius: BorderRadius.circular(8)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: tertiaryColor,
                  ),
                  labelStyle: TextStyle(
                      fontFamily: 'SF Pro Display',
                      color: secondaryColor,
                      fontWeight: FontWeight.w500),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // VerticalDivider(
                      //   color: primaryColor,
                      //   thickness: 10,
                      //   width: 20,
                      //   indent: 10,
                      //   endIndent: 20,
                      // ),
                      Icon(
                        Icons.filter_list,
                        color: tertiaryColor,
                      ),
                    ],
                  )),
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
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                            style: TextStyle(
                                color: tertiaryColor,
                                fontFamily: 'SF Pro Display'),
                            text: 'Deliver to ',
                            children: [
                              TextSpan(
                                  text:
                                      'Jl. Rose No. 123 Block A, Cipete Sub-District, Cipete Sub-District',
                                  style: TextStyle(color: secondaryColor))
                            ])),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            // SizedBox(
            //   height: 250,
            //   child: GridView.count(
            //     crossAxisCount: 4,
            //     mainAxisSpacing: 20,
            //     physics: const NeverScrollableScrollPhysics(),
            //     children: const [
            //       CategoryWidget(
            //         text: 'Electronic',
            //         imageUrl: 'assets/images/electronics.png',
            //       ),
            //       CategoryWidget(
            //         text: 'Food & Drink',
            //         imageUrl: 'assets/images/food-and-drink.png',
            //       ),
            //       CategoryWidget(
            //         text: 'Accesories',
            //         imageUrl: 'assets/images/accesories.png',
            //       ),
            //       CategoryWidget(
            //         text: 'Beauty',
            //         imageUrl: 'assets/images/makeup.png',
            //       ),
            //       CategoryWidget(
            //         text: 'Electronic',
            //         imageUrl: 'assets/images/electronics.png',
            //       ),
            //       CategoryWidget(
            //         text: 'Food & Drink',
            //         imageUrl: 'assets/images/food-and-drink.png',
            //       ),
            //       CategoryWidget(
            //         text: 'Accesories',
            //         imageUrl: 'assets/images/accesories.png',
            //       ),
            //       CategoryWidget(
            //         text: 'Beauty',
            //         imageUrl: 'assets/images/makeup.png',
            //       ),
            //     ],
            //   ),
            // ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(25)),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final String imageUrl;
  final String text;
  const CategoryWidget({
    super.key,
    required this.imageUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
            backgroundColor: tertiaryColor,
            radius: 35,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 34,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(imageUrl),
              ),
            )),
        const SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              color: secondaryColor,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
