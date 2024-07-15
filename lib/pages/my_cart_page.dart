import 'package:flutter/material.dart';
import 'checkout_page.dart';

import '../config/constants.dart';
import '../widgets/cart_item.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});  

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
        title: const Text('My Cart'),
      ),
      
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: checkboxBorderColor,
              offset: const Offset(0, 0),
              blurRadius: 10,
              spreadRadius: 15)
        ]),
        
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
                      style: secondaryTextStyle.copyWith(fontSize: 12,),
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
                  style: tertiaryTextStyle.copyWith(fontSize: 12),
                ),
                
                const SizedBox(
                  height: 4,
                ),
                
                Text(
                  'IDR 3.499.000',
                  style: secondaryTextStyle,
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
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  var item = cartItems[index];
                  return CartItem(
                    selectedValue: item['selectedValue'],
                    list: item['list'],
                    imageUrl: item['imageUrl'],
                    name: item['name'],
                    discountPrice: item['discountPrice'],
                    discount: item['discount'],
                    price: item['price'],
                    isChecked: item['isChecked'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      );
    
  }
}
