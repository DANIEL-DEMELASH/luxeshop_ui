
import 'package:flutter/material.dart';

import '../config/constants.dart';

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
