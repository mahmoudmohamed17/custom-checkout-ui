import 'package:custom_checkout_ui/utils/styles.dart';
import 'package:custom_checkout_ui/widgets/barcode_widget.dart';
import 'package:custom_checkout_ui/widgets/card_ticket_badge.dart';
import 'package:custom_checkout_ui/widgets/payment_item_info.dart';
import 'package:custom_checkout_ui/widgets/total_price_widget.dart';
import 'package:flutter/material.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: ShapeDecoration(
        color: Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 45 + 16, left: 22, right: 22),
        child: Column(
          children: [
            Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.medium25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.regular20,
            ),
            SizedBox(
              height: 42,
            ),
            PaymentItemInfo(title: 'Date', value: '01/24/2023'),
            SizedBox(
              height: 20,
            ),
            PaymentItemInfo(title: 'Time', value: '10:15 AM'),
            SizedBox(
              height: 20,
            ),
            PaymentItemInfo(title: 'To', value: 'Sam Louis'),
            Divider(
              height: 60,
            ),
            TotalPriceWidget(),
            SizedBox(
              height: 30,
            ),
            CardTicketBadge(),
            SizedBox(
              height: 30,
            ),
            Spacer(),
            BarcodeWidget(),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
