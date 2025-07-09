import 'package:flutter/material.dart';

class CustomButtonIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const CustomButtonIcon({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(text),
    );
  }
}
