import 'package:flutter/material.dart';

import '../config/constants.dart';

class ReusableTextField extends StatelessWidget {
  final String hintText;
  final void Function() onPressed;
  const ReusableTextField({
    super.key, required this.hintText, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: tertiaryTextStyle,
        
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: tertiaryColor,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secondaryColor, width: 0.5),
          borderRadius: BorderRadius.circular(4),
        ),
        
        prefixIcon: IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.search,
            color: tertiaryColor,
          ),
        ),
        
        labelStyle: secondaryTextStyle.copyWith(fontSize: 16),
        
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.filter_list,
              color: tertiaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
