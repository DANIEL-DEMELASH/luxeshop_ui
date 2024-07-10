import 'package:flutter/material.dart';

import '../config/constants.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
        title: Container(
          height: 40,
          margin: const EdgeInsets.only(right: 10),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintText: 'Find you needed..',
              hintStyle: TextStyle(
                color: tertiaryColor,
                fontSize: 14,
                fontFamily: 'SF Pro Display',
              ),
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchPage()));
                },
                icon: Icon(
                  Icons.search,
                  color: tertiaryColor,
                ),
              ),
              labelStyle: TextStyle(
                fontFamily: 'SF Pro Display',
                color: secondaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
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
          ),
        ),
      ),
    );
  }
}
