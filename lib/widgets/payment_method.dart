import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key, required this.isActive, required this.image});
  final String image;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 60,
      width: 100,
      duration: const Duration(milliseconds: 250),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                  color: isActive ? Color(0xFF34A853) : Color(0xff7F7F7F),
                  width: 2)),
          shadows: isActive
              ? [
                  BoxShadow(
                    color: Color(0xFF34A853),
                    blurRadius: 4,
                    spreadRadius: 0,
                  )
                ]
              : null),
      child: SvgPicture.asset(
        image,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
