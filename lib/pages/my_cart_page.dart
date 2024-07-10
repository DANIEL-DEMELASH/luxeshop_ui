import 'package:ecommerce_ui/pages/checkout_page.dart';
import 'package:flutter/material.dart';

import '../config/constants.dart';
import '../widgets/cart_item.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  final String _selectedValue = 'Black, M';
  final String _selectedValue2 = 'Grey, M';
  List<String> list = <String>['Black, M', 'Grey, M', 'two', 'three'];

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
        title: const Text(
          'My Cart',
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
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      fillColor: WidgetStateProperty.all(Colors.white),
                      checkColor: Colors.white,
                      onChanged: (value) {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      side: BorderSide(color: checkboxBorderColor, width: 2),
                    ),
                    Text(
                      'Select All',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          color: secondaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      color: tertiaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'IDR 3.499.000',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      color: secondaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
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
                    width: MediaQuery.of(context).size.width / 3.5,
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
            children: [
              CartItem(
                selectedValue: 'none',
                list: const [],
                imageUrl: 'assets/images/apple-watch.jpg',
                name: 'Apple Watch Ultra 2 with Ocean Band',
                discountPrice: '',
                discount: 0,
                price: 'IDR 15.999.000',
                isChecked: false,
              ),
              const SizedBox(
                height: 12,
              ),
              CartItem(
                selectedValue: 'none',
                list: const [],
                imageUrl: 'assets/images/airpods-pro.webp',
                name: 'Airpods Pro 2nd generation with USB-C',
                discountPrice: 'IDR 3.499.000',
                discount: 10,
                price: 'IDR 4.299.000',
                isChecked: true,
              ),
              const SizedBox(
                height: 12,
              ),
              CartItem(
                selectedValue: _selectedValue,
                list: list,
                imageUrl: 'assets/images/hoodie.webp',
                name: 'Adicolor Neuclassics Men\'s Hoodie',
                discountPrice: '',
                discount: 0,
                price: 'IDR 1.500.000',
                isChecked: false,
              ),
              const SizedBox(
                height: 12,
              ),
              CartItem(
                selectedValue: _selectedValue2,
                list: list,
                imageUrl: 'assets/images/nba-bulls-jogger.webp',
                name: 'NBA Bulls Men\'s Jogger',
                discountPrice: 'IDR 391.300',
                discount: 7,
                price: 'IDR 559.000',
                isChecked: true,
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
