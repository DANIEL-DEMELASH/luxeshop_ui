import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../config/constants.dart';
import '../widgets/category_widget.dart';
import '../widgets/grid_item.dart';
import '../widgets/my_icon.dart';
import '../widgets/reusable_text_field.dart';
import '../widgets/square_painter.dart';
import 'my_cart_page.dart';
import 'search_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset(
            'assets/images/logo.png',
            width: 35,
          ),
        ),
        
        title: const Text(
          'Luxeshop',
          style: TextStyle(fontSize: 18.0),
        ),
        
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyCart()));
              },
              icon: MyIcon(
                icon: Image.asset(
                  'assets/images/shopping-bag.png',
                  width: 25,
                ),
              )),
          
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: () {},
                icon: MyIcon(
                    icon: Image.asset(
                  'assets/images/notification-bell.png',
                  width: 25,
                ))),
          ),
        ],
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            children: [
              
              SizedBox(
                height: 45,
                child: ReusableTextField(
                  hintText: 'Find you needed..',
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage())),
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
                          ),
                          text: 'Deliver to ',
                          children: [
                            TextSpan(
                                text:
                                    'Jl. Rose No. 123 Block A, Cipete Sub-District, Cipete Sub-District',
                                style: secondaryTextStyle),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 8),
              
              SizedBox(
                height: 230,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                    itemCount: categories.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 10,
                            childAspectRatio: 0.8),
                    itemBuilder: (BuildContext context, int index) {
                      var category = categories[index];
                      return CategoryWidget(
                        text: category['title'],
                        imageUrl: category['imageUrl'],
                      );
                    }),
              ),
              
              const SizedBox(height: 20),
              
              SizedBox(
                height: 180,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: CustomPaint(
                    painter: SquarePainter(),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              
                              Text(
                                '6.6 Flash Sale',
                                style:
                                    bigTextStyle.copyWith(color: Colors.white),
                              ),
                              
                              const Text(
                                'Cashback Up to 100%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
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
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          
                          Image.asset('assets/images/pink-hoodie.png'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 20),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Flash Sale',
                          style: bigTextStyle.copyWith(color: secondaryColor)),
                      
                      const SizedBox(width: 8),
                      
                      Text(
                        'Ends in',
                        style: TextStyle(
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
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 20),
              
              SizedBox(
                width: double.infinity,
                child: StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  children: const [
                    GridItem(
                      imageUrl: 'assets/images/apple-ipad-pro-11-2022.jpg',
                      discount: 6,
                      name: 'Ipad Pro 6th Generation 11 Inch 2022',
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
