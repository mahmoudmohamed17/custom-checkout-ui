import 'package:custom_checkout_ui/widgets/app_bar.dart';
import 'package:custom_checkout_ui/widgets/thank_you_view_body.dart';
import 'package:flutter/material.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(onTap: () {
        Navigator.pop(context);
      }),
      body:
          Transform.translate(offset: Offset(0, 14), child: ThankYouViewBody()),
    );
  }
}
