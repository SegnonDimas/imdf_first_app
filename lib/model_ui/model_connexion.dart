import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final Widget prefixIcon;
  final Widget labelText;
  final String hintText;
  final Widget? suffixIcon;
  const AppTextField({
    super.key,
    required this.prefixIcon,
    required this.labelText,
    required this.hintText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
              prefixIcon: prefixIcon,
              label: labelText,
              hintText: hintText,
              suffixIcon: suffixIcon ?? SizedBox(),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)))),
    );
  }
}
