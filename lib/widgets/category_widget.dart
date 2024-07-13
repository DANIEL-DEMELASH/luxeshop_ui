import 'package:flutter/material.dart';

import '../config/constants.dart';

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
            )
        ),
            
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
