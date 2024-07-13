// ignore: must_be_immutable
import 'package:flutter/material.dart';

import '../config/constants.dart';

// ignore: must_be_immutable
class CartItem extends StatelessWidget {
  CartItem({
    super.key,
    required String selectedValue,
    required this.list,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.discountPrice,
    required this.discount,
    required this.isChecked,
  }) : _selectedValue = selectedValue;

  final String _selectedValue;
  final List<String> list;
  final String imageUrl;
  final String name;
  final String price;
  final String discountPrice;
  final int discount;
  bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: defaultBgColor,
          border: Border.all(color: containerBorderColor, width: 2),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Stack(children: [
                
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 14.0),
                  child: Image.asset(
                    imageUrl,
                    width: 50,
                  ),
                ),
                
                Positioned(
                  top: -10,
                  left: -10,
                  child: Checkbox(
                    value: isChecked,
                    fillColor: isChecked
                        ? WidgetStateProperty.all(primaryColor)
                        : WidgetStateProperty.all(Colors.white),
                    checkColor: Colors.white,
                    onChanged: (value) {
                      // setState(() {
                        
                      //   widget.isChecked = !widget.isChecked;
                      // });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    side: BorderSide(color: checkboxBorderColor, width: 2),
                  ),
                ),
              ])
            ],
          ),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: tertiaryColor),
              ),
              
              const SizedBox(
                height: 8,
              ),
              
              if (list.isNotEmpty)
                Column(
                  children: [
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                          border: Border.all(color: tertiaryColor),
                          borderRadius: BorderRadius.circular(4)),
                      child: DropdownButton(
                          value: _selectedValue,
                          icon: const Icon(Icons.arrow_drop_down),
                          elevation: 0,
                          style: TextStyle(
                            color: secondaryColor,
                          ),
                          padding: const EdgeInsets.only(left: 4),
                          underline: Container(),
                          alignment: Alignment.center,
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                                value: value, child: Text(value));
                          }).toList(),
                          onChanged: (value) {}),
                    ),
                    
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
                
              if (discount > 0)
                Column(
                  children: [
                    Row(
                      children: [
                        Text(discountPrice,
                            style: secondaryTextStyle.copyWith(fontSize: 18)),
                            
                        const SizedBox(
                          width: 8,
                        ),
                        
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            color: blurredPinkColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            '10% off',
                            style: TextStyle(color: pinkColor),
                          ),
                        )
                      ],
                    ),
                    
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
                
              Column(
                children: [
                  Text(price,
                      style: TextStyle(
                          color: discount > 0
                              ? tertiaryColor
                              : secondaryColor,
                          fontSize: discount > 0 ? 14 : 18,
                          fontWeight: FontWeight.w500,
                          decoration: discount > 0
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                          decorationColor: tertiaryColor)),
                          
                  const SizedBox(
                    height: 8,
                  )
                ],
              ),
              
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      color: tertiaryColor,
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.indeterminate_check_box_outlined,
                          color: primaryColor,
                        ),
                        
                        const SizedBox(
                          width: 12,
                        ),
                        
                        Text(
                          '1',
                          style: TextStyle(
                              color: secondaryColor,
                              fontSize: 18),
                        ),
                        
                        const SizedBox(
                          width: 12,
                        ),
                        
                        Icon(
                          Icons.add_box_outlined,
                          color: primaryColor,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
