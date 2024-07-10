import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../config/constants.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(color: tertiaryColor, width: .5),
                    borderRadius: BorderRadius.circular(25)),
                child: const Icon(Icons.arrow_back)),
          ),
        ),
        title: const Text(
          'Checkout',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
        centerTitle: true,
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
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    color: tertiaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      'IDR 15.349.000',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          color: secondaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
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
                            builder: (context) => const CheckOutPage()));
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
                            fontFamily: 'SF Pro Display',
                            color: Colors.white,
                            fontSize: 14,
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
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/location_pin.png',
                          width: 30,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Shipping Address',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Display',
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
                                          fontFamily: 'SF Pro Display',
                                          color: primaryColor,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )),
                                  TextSpan(
                                    text:
                                        ' Jl. Rose No. 123 Block A, Cipete Sub District, Cipete Sub-District, Cilandak District, South Jakarta City, DKI Jakarta 12410 Indonesia',
                                    style: TextStyle(
                                        height: 1.5,
                                        fontFamily: 'SF Pro Display',
                                        color: secondaryColor,
                                        backgroundColor: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
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
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      color: secondaryColor,
                                      fontWeight: FontWeight.w500),
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
                                      fontFamily: 'SF Pro Display',
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
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: secondaryColor,
                            fontFamily: 'SF Pro Display'),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Space Gray Colors, Wi-fi Only, 256 GB',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: tertiaryColor,
                            fontFamily: 'SF Pro Display'),
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
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: secondaryColor,
                                fontFamily: 'SF Pro Display'),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                          ),
                          Text(
                            'x1',
                            style: TextStyle(
                                color: tertiaryColor,
                                fontFamily: 'SF Pro Display'),
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
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        color: secondaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  Text(
                    'See all options',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
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
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              color: secondaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Estimated arrived 9 - 10 June',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              color: tertiaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Text(
                      'IDR 50.000',
                      style: TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SF Pro Display',
                          fontSize: 16),
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
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      color: secondaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Type any message...',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      color: tertiaryColor,
                      fontWeight: FontWeight.w500,
                    ),
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
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      color: secondaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'IDR 15.349.000',
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
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
                style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    color: secondaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
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
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 16),
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
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Display'),
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
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 16),
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
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Display'),
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
