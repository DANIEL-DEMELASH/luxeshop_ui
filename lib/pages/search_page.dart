import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../config/constants.dart';
import '../widgets/grid_item.dart';
import '../widgets/reusable_text_field.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Container(
          height: 40,
          margin: const EdgeInsets.only(right: 10),
          child: ReusableTextField(
            hintText: 'Find you needed..',
            onPressed: () {},
          ),
        ),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Popular Search',
                style: secondaryTextStyle.copyWith(fontSize: 16),
              ),
              
              const SizedBox(
                height: 12,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width / 2.3,
                    padding: const EdgeInsets.only(
                        left: 10, top: 12, bottom: 12, right: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: containerBorderColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/fossil-watch.jpeg',
                          width: 37,
                          height: double.infinity,
                        ),
                        
                        const SizedBox(
                          width: 12,
                        ),
                        
                        Text(
                          'Fossil Watch',
                          style: secondaryTextStyle.copyWith(overflow: TextOverflow.ellipsis),
                        )
                      ],
                    ),
                  ),
                  
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width / 2.3,
                    padding: const EdgeInsets.only(
                        left: 10, top: 12, bottom: 12, right: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: containerBorderColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/apple-iphone-14-pro.jpg',
                          width: 37,
                          height: double.infinity,
                        ),
                        
                        const SizedBox(
                          width: 12,
                        ),
                        
                        Text(
                          'Iphone 14 Pro',
                          style: secondaryTextStyle.copyWith(overflow: TextOverflow.ellipsis,),
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
                    width: MediaQuery.of(context).size.width / 2.3,
                    padding: const EdgeInsets.only(
                        left: 10, top: 12, bottom: 12, right: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: containerBorderColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/gaming-chair.png',
                          width: 37,
                          height: double.infinity,
                        ),
                        
                        const SizedBox(
                          width: 12,
                        ),
                        
                        Text(
                          'Gaming Chair',
                          style: secondaryTextStyle.copyWith(overflow: TextOverflow.ellipsis,),
                        )
                      ],
                    ),
                  ),
                  
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width / 2.3,
                    padding: const EdgeInsets.only(
                        left: 10, top: 12, bottom: 12, right: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: containerBorderColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/new-balance.png',
                          width: 37,
                          height: double.infinity,
                        ),
                        
                        const SizedBox(
                          width: 12,
                        ),
                        
                        Text(
                          'New Balance',
                          style: secondaryTextStyle.copyWith(overflow: TextOverflow.ellipsis,),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 20),
              
              Text(
                'Recommend for You',
                style: secondaryTextStyle.copyWith(fontSize: 16),
              ),
              
              const SizedBox(height: 15),
              
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

