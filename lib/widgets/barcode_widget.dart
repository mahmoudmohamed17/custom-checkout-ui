import 'package:custom_checkout_ui/utils/assets.dart';
import 'package:custom_checkout_ui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BarcodeWidget extends StatelessWidget {
  const BarcodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(Assets.imagesBarCode, height: 60,),
        Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: ShapeDecoration(
            color: Color(0xffEDEDED),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.50, color: Color(0xFF34A853)),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Center(
            child: Text('PAID',
                textAlign: TextAlign.center,
                style: Styles.semiBold24.copyWith(
                  color: Color(0xFF34A853),
                )),
          ),
        )
      ],
    );
  }
}
