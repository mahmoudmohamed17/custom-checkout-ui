import 'package:custom_checkout_ui/utils/assets.dart';
import 'package:custom_checkout_ui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardTicketBadge extends StatelessWidget {
  const CardTicketBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        spacing: 24,
        children: [
          SvgPicture.asset(Assets.imagesMastercard),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Credit Card', style: Styles.regular18),
              Text('Mastercard **78 ', style: Styles.regular16),
            ],
          )
        ],
      ),
    );
  }
}
