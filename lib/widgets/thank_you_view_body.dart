import 'package:custom_checkout_ui/extensions/context_extension.dart';
import 'package:custom_checkout_ui/widgets/custom_check_icon.dart';
import 'package:custom_checkout_ui/widgets/custom_dashed_line.dart';
import 'package:custom_checkout_ui/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ThankYouCard(),
          Positioned(
            bottom: context.height * 0.20 + 20,
            left: 24,
            right: 24,
            child: CustomDashedLine(),
          ),
          Positioned(
              left: -20,
              bottom: context.height * 0.20,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              right: -20,
              bottom: context.height * 0.20,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
            left: 0,
            right: 0,
            top: -45,
            child: CustomCheckIcon(),
          )
        ],
      ),
    );
  }
}
