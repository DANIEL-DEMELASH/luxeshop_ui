import 'package:flutter/material.dart';

import '../config/constants.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int trimLines;

  const ExpandableText({
    super.key,
    required this.text,
    this.trimLines = 2,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _readMore = true;

  void _toggleReadMore() {
    setState(() {
      _readMore = !_readMore;
    });
  }

  @override
  Widget build(BuildContext context) {
    final span = TextSpan(
      text: widget.text,
      style: TextStyle(
          color: tertiaryColor,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500),
    );

    final tp = TextPainter(
      text: span,
      textAlign: TextAlign.left,
      textDirection: TextDirection.ltr,
      maxLines: widget.trimLines,
    );

    tp.layout(maxWidth: MediaQuery.of(context).size.width);

    final exceededMaxLines = tp.didExceedMaxLines;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        
        _readMore && exceededMaxLines
            ? Text(
                widget.text,
                style: TextStyle(
                    color: tertiaryColor,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500),
                maxLines: widget.trimLines,
                overflow: TextOverflow.ellipsis,
              )
            : Text(
                widget.text,
                style: TextStyle(
                    color: tertiaryColor,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500),
              ),
              
        if (exceededMaxLines)
          GestureDetector(
            onTap: _toggleReadMore,
            child: Text(
              _readMore ? 'Read more' : 'Read less',
              style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SF Pro Display'),
            ),
          ),
          
      ],
    );
  }
}
