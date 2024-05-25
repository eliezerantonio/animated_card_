import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.withOpacity = false,
    this.fontSize = 14,
  });
  final String text;
  final bool? withOpacity;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white.withOpacity(withOpacity == true ? 0.5 : 1.0),
        fontSize: fontSize ?? 14,
      ),
    );
  }
}
