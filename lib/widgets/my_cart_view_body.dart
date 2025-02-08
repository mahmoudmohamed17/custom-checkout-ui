import 'package:custom_checkout_ui/utils/assets.dart';
import 'package:custom_checkout_ui/utils/styles.dart';
import 'package:custom_checkout_ui/views/payment_details_view.dart';
import 'package:custom_checkout_ui/widgets/custom_button.dart';
import 'package:custom_checkout_ui/widgets/order_item.dart';
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
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PaymentDetailsView();
                }));
              },
            ),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
