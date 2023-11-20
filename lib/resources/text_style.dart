import 'package:flutter/material.dart';

class TextStyleRegular extends TextStyle {
  @override
  final Color color;
  @override
  final double fontSize;

  const TextStyleRegular({required this.color, required this.fontSize})
      : super(
        color: color,
        fontSize: fontSize,
        fontFamily: "Gilroy"
      );
}

class TextStyleMedium extends TextStyle {
  @override
  final Color color;
  @override
  final double fontSize;

  const TextStyleMedium({required this.color,  required this.fontSize})
      : super(
        color: color, 
        fontSize: fontSize,
        fontFamily: "Gilroy-Medium",
      );
}

class TextStyleBold extends TextStyle {
  @override
  final Color color;
  @override
  final double fontSize;

  const TextStyleBold({required this.color, required this.fontSize})
      : super(
        color: color,
        fontSize: fontSize,
        fontFamily: "Gilroy-Bold",
      );
}
class TextStyleExtraBold extends TextStyle {
  @override
  final Color color;
  @override
  final double fontSize;

  const TextStyleExtraBold({required this.color, required this.fontSize})
      : super(
        color: color,
        fontSize: fontSize,
        fontFamily: "Gilroy-ExtraBold",
      );
}
