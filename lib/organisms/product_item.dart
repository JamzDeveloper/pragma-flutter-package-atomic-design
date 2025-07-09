import 'package:flutter/material.dart';
import 'package:design_system_package/atoms/custom_text.dart';
import 'package:design_system_package/molecules/custom_button_icon.dart';

class ProductItem extends StatelessWidget {
  final String name;
  final double price;
  final String imageUrl;
  final Color? color;

  const ProductItem({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? Colors.white,
      margin: const EdgeInsets.all(12),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(imageUrl, height: 150, fit: BoxFit.contain),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomText('\$${price.toStringAsFixed(2)}'),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: CustomButtonIcon(
                text: 'Agregar',
                icon: Icons.add_shopping_cart,
                onPressed: () {
                  // Acción de agregar al carrito
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
