import 'package:flutter/material.dart';
import '../atoms/custom_icon.dart';
import '../atoms/custom_text.dart';

class CustomTextIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final double spacing;

  const CustomTextIcon({
    super.key,
    required this.icon,
    required this.text,
    this.spacing = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIcon(icon: icon),
        SizedBox(width: spacing),
        CustomText(text),
      ],
    );
  }
}
