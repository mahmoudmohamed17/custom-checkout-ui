
import 'package:custom_checkout_ui/widgets/custom_button.dart';
import 'package:custom_checkout_ui/widgets/payment_methods_list.dart';
import 'package:flutter/material.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        spacing: 32,
        children: [
          PaymentMethodsList(),
          CustomButton(
            label: 'Continue',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
