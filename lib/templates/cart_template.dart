import 'package:design_system_package/organisms/cart_summary.dart';
import 'package:flutter/material.dart';

class CartTemplateBody extends StatelessWidget {
  final List<String> items;
  final double total;

  const CartTemplateBody({super.key, required this.items, required this.total});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CartSummary(items: items, total: total),
    );
  }
}
