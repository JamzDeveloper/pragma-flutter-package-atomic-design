import 'package:design_system_package/organisms/product_item.dart';
import 'package:flutter/material.dart';

class ProductTemplateBody extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double price;

  const ProductTemplateBody({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ProductItem(name: title, imageUrl: imageUrl, price: price),
    );
  }
}
