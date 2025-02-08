import 'package:custom_checkout_ui/widgets/app_bar.dart';
import 'package:custom_checkout_ui/widgets/payment_details_view_body.dart';
import 'package:flutter/material.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          title: 'Payment Details',
          onTap: () {
            Navigator.pop(context);
          }),
      body: PaymentDetailsViewBody(),
    );
  }
}
