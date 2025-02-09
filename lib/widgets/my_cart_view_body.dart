import 'package:custom_checkout_ui/utils/assets.dart';
import 'package:custom_checkout_ui/utils/styles.dart';
import 'package:custom_checkout_ui/widgets/custom_button.dart';
import 'package:custom_checkout_ui/widgets/order_item.dart';
import 'package:custom_checkout_ui/widgets/payment_methods_list.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 18,
          ),
          Expanded(child: Image.asset(Assets.imagesBasket)),
          SizedBox(
            height: 24,
          ),
          OrderItem(title: 'Order Subtotal', value: r'$42.97'),
          OrderItem(title: 'Discount', value: r'$0'),
          OrderItem(title: 'Shipping', value: r'$8'),
          SizedBox(
            height: 10,
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
          Row(
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
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            width: double.infinity,
            child: CustomButton(
              label: 'Complete Payment',
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return PaymentMethodsBottomSheet();
                    });
              },
            ),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}

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
