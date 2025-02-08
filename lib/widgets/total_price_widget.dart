import 'package:custom_checkout_ui/utils/styles.dart';
import 'package:flutter/material.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total',
          style: Styles.semiBold24,
        ),
        Text(
          r'$50.97',
          style: Styles.semiBold24,
        ),
      ],
    );
  }
}
