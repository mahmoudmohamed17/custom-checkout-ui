import 'package:custom_checkout_ui/utils/assets.dart';
import 'package:custom_checkout_ui/widgets/payment_method.dart';
import 'package:flutter/material.dart';

class PaymentMethodsList extends StatefulWidget {
  const PaymentMethodsList({super.key});

  @override
  State<PaymentMethodsList> createState() => _PaymentMethodsListState();
}

class _PaymentMethodsListState extends State<PaymentMethodsList> {
  final List<String> list = [
    Assets.imagesCard,
    Assets.imagesPaypal,
    Assets.imagesApplePay,
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: PaymentMethod(
                    isActive: _currentIndex == index, image: list[index]),
              ));
        },
      ),
    );
  }
}
