import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'tracking_page.dart';

import '../config/constants.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

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
        
        title: const Text(
          'Checkout'
        ),
      ),
      
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80,
        
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: checkboxBorderColor,
              offset: const Offset(0, 0),
              blurRadius: 10,
              spreadRadius: 15)
        ]),
        
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total',
                  style: tertiaryTextStyle,
                ),
                
                const SizedBox(
                  height: 4,
                ),
                
                Row(
                  children: [
                    Text(
                      'IDR 15.349.000',
                      style: secondaryTextStyle.copyWith(fontSize: 18),
                    ),
                    
                    const SizedBox(
                      width: 4,
                    ),
                    
                    const Icon(
                      CupertinoIcons.chevron_down,
                      size: 18,
                    )
                  ],
                ),
              ],
            ),
            
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrackingPage()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 26, vertical: 14),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                      child: Text(
                        'Checkout',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  
                )
              ],
            )
          ],
        ),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(color: containerBorderColor, width: 2),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Image.asset(
                      'assets/images/location_pin.png',
                      width: 30,
                    ),
                    
                    Row(
                      children: [
                        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Shipping Address',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            
                            const SizedBox(
                              height: 4,
                            ),
                            
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: RichText(
                                text: TextSpan(children: [
                                  WidgetSpan(
                                      child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 2),
                                    decoration: BoxDecoration(
                                        color: blurredPinkColor,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Text(
                                      'Home',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )),
                                  
                                  TextSpan(
                                    text:
                                        ' Jl. Rose No. 123 Block A, Cipete Sub District, Cipete Sub-District, Cilandak District, South Jakarta City, DKI Jakarta 12410 Indonesia',
                                    style: secondaryTextStyle.copyWith(fontSize: 12, backgroundColor: Colors.white, height: 1.5),
                                  )
                                ]),
                              ),
                            ),
                            
                            const SizedBox(
                              height: 8,
                            ),
                            
                            Row(
                              children: [
                                
                                Text(
                                  'Albert Flores',
                                  style: secondaryTextStyle,
                                ),
                                
                                const SizedBox(
                                  width: 4,
                                ),
                                
                                CircleAvatar(
                                  radius: 4,
                                  backgroundColor: containerBorderColor,
                                ),
                                
                                const SizedBox(
                                  width: 4,
                                ),
                                
                                Text(
                                  '+62 874 3190 1715',
                                  style: TextStyle(
                                      color: containerBorderColor,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        ),
                        
                        const SizedBox(
                          width: 8,
                        ),
                        
                        Icon(
                          Icons.arrow_forward_ios,
                          color: tertiaryColor,
                          size: 15,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 25),
              
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 30.0),
                    child: Image.asset(
                      'assets/images/apple-ipad-pro-11-2022.jpg',
                      width: 60,
                    ),
                  ),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text(
                        'Ipad Pro 6th Generation 11 Inch 2022',
                        overflow: TextOverflow.ellipsis,
                        style: secondaryTextStyle,
                      ),
                      
                      const SizedBox(
                        height: 8,
                      ),
                      
                      Text(
                        'Space Gray Colors, Wi-fi Only, 256 GB',
                        overflow: TextOverflow.ellipsis,
                        style: tertiaryTextStyle.copyWith(fontSize: 12,),
                      ),
                      
                      const SizedBox(
                        height: 12,
                      ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'IDR 15.299.000',
                            overflow: TextOverflow.ellipsis,
                            style: secondaryTextStyle.copyWith(fontSize: 16)
                          ),
                          
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                          ),
                          
                          Text(
                            'x1',
                            style: TextStyle(
                                color: tertiaryColor,),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              
              const SizedBox(
                height: 25,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Shipping',
                    style: secondaryTextStyle.copyWith(fontSize: 16),
                  ),
                  
                  Text(
                    'See all options',
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(
                height: 20,
              ),
              
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(color: containerBorderColor),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Express',
                          style: secondaryTextStyle,
                        ),
                        
                        const SizedBox(
                          height: 4,
                        ),
                        
                        Text(
                          'Estimated arrived 9 - 10 June',
                          style: tertiaryTextStyle,
                        ),
                      ],
                    ),
                    
                    Text(
                      'IDR 50.000',
                      style: tertiaryTextStyle.copyWith(fontSize: 16),
                    )
                  ],
                ),
              ),
              
              const SizedBox(
                height: 10,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Note :',
                    style: secondaryTextStyle,
                  ),
                  
                  Text(
                    'Type any message...',
                    style: tertiaryTextStyle,
                  ),
                ],
              ),
              
              const SizedBox(
                height: 10,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal, 1 items',
                    style: secondaryTextStyle,
                  ),
                  
                  Text(
                    'IDR 15.349.000',
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ],
              ),
              
              const SizedBox(
                height: 20,
              ),
              
              Divider(
                color: containerBorderColor,
              ),
              
              const SizedBox(
                height: 20,
              ),
              
              Text(
                'Payment Method',
                style: secondaryTextStyle.copyWith(fontSize: 16),
              ),
              
              const SizedBox(
                height: 20,
              ),
              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.money,
                                color: primaryColor,
                              ),
                              
                              const SizedBox(
                                width: 8,
                              ),
                              
                              Text(
                                'Cash',
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 16, 
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          
                          const SizedBox(
                            height: 8,
                          ),
                          
                          SizedBox(
                            width: 160,
                            child: Text(
                              'Pay cash when the medicine arrives at the destination.',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 12,),
                            ),
                          )
                        ],
                      ),
                    ),
                    
                    const SizedBox(
                      width: 12,
                    ),
                    
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          border: Border.all(color: containerBorderColor),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/bank.png',
                                width: 25,
                              ),
                              
                              const SizedBox(
                                width: 8,
                              ),
                              
                              Text(
                                'Bank Transfer',
                                style: secondaryTextStyle.copyWith(fontSize: 16),
                              )
                            ],
                          ),
                          
                          const SizedBox(
                            height: 8,
                          ),
                          
                          SizedBox(
                            width: 160,
                            child: Text(
                              'Log in to your online account and make payments.',
                              style: TextStyle(
                                  color: secondaryColor,
                                  fontSize: 12,),
                            ),
                          )
                        ],
                      ),
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
