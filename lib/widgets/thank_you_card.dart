import 'package:custom_checkout_ui/extensions/context_extension.dart';
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
              height: 32,
            ),
            PaymentItemInfo(title: 'Date', value: '01/24/2023'),
            SizedBox(
              height: 10,
            ),
            PaymentItemInfo(title: 'Time', value: '10:15 AM'),
            SizedBox(
              height: 10,
            ),
            PaymentItemInfo(title: 'To', value: 'Sam Louis'),
            Divider(
              height: 60,
            ),
            TotalPriceWidget(),
            SizedBox(
              height: 16,
            ),
            CardTicketBadge(),
            Spacer(),
            BarcodeWidget(),
            // to always make the BarcodeWidget at the center of the remaining space of the ticket
            // context.height * 0.2 ==> the height of the remaining space [bottom of the ticket]
            // +20 ==> which is the radius of the two white circles
            // /2 ==> to make it at the center [bottom of the widget is the one only at the center]
            // -30 ==> 1/2 height of the widget
            SizedBox(
              height: (context.height * 0.2 + 20) / 2 - 30,
            )
          ],
        ),
      ),
    );
  }
}
