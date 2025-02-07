import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextOverflow? overflow;
  final int? maxLines;
  const AppText(
      {super.key,
      this.text,
      this.fontSize,
      this.fontWeight,
      this.textColor,
      this.overflow,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: fontSize, fontWeight: fontWeight, color: textColor),
    );
  }
}
