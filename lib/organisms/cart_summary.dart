import 'package:flutter/material.dart';
import 'package:design_system_package/atoms/custom_text.dart';
import 'package:design_system_package/atoms/custom_divider.dart';
import 'package:design_system_package/molecules/custom_button_icon.dart';

class CartSummary extends StatelessWidget {
  final List<String> items;
  final double total;
  final Color? color;
  const CartSummary({
    super.key,
    required this.items,
    required this.total,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? Colors.white,
      margin: const EdgeInsets.all(12),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...items.map((e) => CustomText(e)).toList(),
            const CustomDivider(),
            CustomText(
              'Total: \$${total.toStringAsFixed(2)}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            CustomButtonIcon(
              text: 'Pagar',
              icon: Icons.payment,
              onPressed: () {
                // Acción de pago
              },
            ),
          ],
        ),
      ),
    );
  }
}
