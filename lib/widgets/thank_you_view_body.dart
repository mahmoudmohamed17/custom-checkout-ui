import 'package:custom_checkout_ui/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: ShapeDecoration(
              color: Color(0xFFEDEDED),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            bottom: context.height * 0.20 + 20,
            left: 24,
            right: 24,
            child: Row(
              children: List.generate(30, (index) {
                return Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    height: 2,
                    color: Color(0xffB8B8B8),
                  ),
                );
              }),
            ),
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
            child: CircleAvatar(
              radius: 45,
              backgroundColor: Color(0xFFEDEDED),
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Color(0xff34A853),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
