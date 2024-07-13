import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'my_cart_page.dart';
import 'checkout_page.dart';
import '../widgets/expandable_text.dart';
import '../config/constants.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int activeIndex = 0;
  int activeCategoryIndex = 0;
  Widget buildIndicator() => Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 30,
            child: Center(
              child: AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: ipadImages.length,
                effect: WormEffect(
                    dotHeight: 4,
                    dotWidth: 36,
                    activeDotColor: primaryColor,
                    dotColor: tertiaryColor),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: blurredPinkColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                '${activeIndex + 1}/${ipadImages.length}',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  color: pinkColor,
                ),
              ),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      
        title: const Text('Detail Product'),
        
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: CircleAvatar(
              radius: 18,
              backgroundColor: tertiaryColor,
              child: CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.share_outlined,
                    color: secondaryColor,
                  )),
            ),
            ),
          ),
        ],
      ),
      
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyCart()));
              },
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width / 2 - 26,
                padding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 14),
                decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/shopping-bag-primary.png',
                      width: 20,
                    ),
                    
                    const SizedBox(
                      width: 8,
                    ),
                    
                    Text(
                      'Add to Cart',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CheckOutPage()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 2 - 26,
                height: 55,
                padding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 14),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12)),
                child: const Center(
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider.builder(
                itemCount: ipadImages.length,
                itemBuilder: (context, index, rIndex) {
                  String imageUrl = ipadImages[index];
                  return SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/$imageUrl',
                      fit: BoxFit.fitHeight,
                    ),
                  );
                },
                options: CarouselOptions(
                    height: 250,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.9,
                    onPageChanged: (index, reason) => setState(() {
                          activeIndex = index;
                        })),
              ),
              
              const SizedBox(
                height: 12,
              ),
              
              Center(child: buildIndicator()),
              
              const SizedBox(
                height: 12,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ipad Pro 6th Generation 11 Inch 2022',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: secondaryColor),
                  ),
                  
                  Icon(
                    Icons.favorite_outline,
                    color: tertiaryColor,
                  )
                ],
              ),
              
              const SizedBox(
                height: 12,
              ),
              
              Row(
                children: [
                  Text(
                    'IDR 15.299.000',
                    style: secondaryTextStyle.copyWith(fontSize: 20,),
                  ),
                  
                  const SizedBox(
                    width: 12,
                  ),
                  
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: blurredPinkColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      '6% off',
                      style: TextStyle(color: pinkColor),
                    ),
                  )
                ],
              ),
              
              const SizedBox(
                height: 12,
              ),
              
              Text(
                'IDR 16.999.000',
                style: TextStyle(
                    color: tertiaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: tertiaryColor),
              ),
              
              const SizedBox(
                height: 12,
              ),
              
              Text(
                'Description Product',
                style: secondaryTextStyle.copyWith(fontSize: 16),
              ),
              
              const SizedBox(
                height: 12,
              ),
              
              const ExpandableText(
                  text:
                      'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quo quam nobis nam autem quis, praesentium eius cupiditate possimus fugit aspernatur voluptate provident sed. Blanditiis illum itaque dolorum dolorem quae autem voluptatum necessitatibus aliquam, corporis id praesentium ducimus nihil amet explicabo repellendus iusto maxime voluptatibus sapiente inventore soluta deleniti, a error impedit! Provident consectetur optio, numquam accusantium odit commodi esse ipsa animi obcaecati a libero molestiae at perferendis error incidunt sunt quam, ipsum quo! Qui aperiam itaque dolor expedita officiis nulla dolore. Harum et, ea, consectetur, ratione quam rerum obcaecati exercitationem eos autem ducimus quibusdam officia recusandae quae voluptate voluptatibus temporibus incidunt nostrum deserunt? Voluptatum, adipisci. Veniam enim nam libero cum sapiente maiores reprehenderit deleniti placeat obcaecati mollitia blanditiis exercitationem porro, quam dolorem alias quos, dolores dolorum est, hic delectus voluptates eligendi saepe distinctio. Sint illo totam deleniti tempora, minus quos necessitatibus esse delectus, laudantium voluptate eius vel explicabo adipisci eos porro optio ut velit corporis praesentium accusantium harum atque omnis.'),
              
              const SizedBox(
                height: 12,
              ),
              
              Text(
                'Type',
                style: secondaryTextStyle.copyWith(fontSize: 16),
              ),
              
              const SizedBox(
                height: 12,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Colors : ',
                            style: tertiaryTextStyle.copyWith(fontSize: 16),
                          ),
                          
                          Text(
                            'Space Gray',
                            style: secondaryTextStyle.copyWith(fontSize: 16),
                          )
                        ],
                      ),
                      
                      const SizedBox(
                        height: 8,
                      ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: primaryColor,
                            child: CircleAvatar(
                              radius: 19,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 18,
                                backgroundColor: spaceGrayColor,
                              ),
                            ),
                          ),
                          
                          const SizedBox(
                            width: 8,
                          ),
                          
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: grayColor,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: grayColor,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Capacity : ',
                            style: tertiaryTextStyle.copyWith(fontSize: 16),
                          ),
                          
                          Text(
                            'Wi-fi',
                            style: secondaryTextStyle.copyWith(fontSize: 16),
                          )
                        ],
                      ),
                      
                      const SizedBox(
                        height: 8,
                      ),
                      
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 4),
                            decoration: BoxDecoration(
                                color: blurredPinkColor,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: pinkColor)),
                            child: Text(
                              'Wi-fi',
                              style: TextStyle(color: pinkColor),
                            ),
                          ),
                          
                          Container(
                            margin: const EdgeInsets.only(left: 8),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: tertiaryColor)),
                            child: Text(
                              'Wi-fi + Cellular',
                              style: TextStyle(color: secondaryColor),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
