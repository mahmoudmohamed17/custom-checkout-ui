import 'package:custom_checkout_ui/utils/styles.dart';
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key, required this.title, required this.value});
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.regular18,
        ),
        Text(
          value,
          style: Styles.regular18,
        ),
      ],
    );
  }
}