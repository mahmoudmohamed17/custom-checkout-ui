import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key, required this.isActive, required this.image});
  final String image;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActivePaymentMethod(
            image: image,
          )
        : InactivePaymentMethod(
            image: image,
          );
  }
}

class ActivePaymentMethod extends StatelessWidget {
  const ActivePaymentMethod({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 60,
      width: 100,
      duration: const Duration(milliseconds: 350),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Color(0xFF34A853))),
          shadows: [
            BoxShadow(
              color: Color(0xFF34A853),
              blurRadius: 4,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ]),
      child: SvgPicture.asset(
        image,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}

class InactivePaymentMethod extends StatelessWidget {
  const InactivePaymentMethod({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 60,
      width: 100,
      duration: const Duration(milliseconds: 350),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Color(0xff7F7F7F))),
      ),
      child: SvgPicture.asset(
        image,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
