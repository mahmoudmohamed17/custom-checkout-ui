import 'package:custom_checkout_ui/widgets/app_bar.dart';
import 'package:custom_checkout_ui/widgets/my_cart_view_body.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(title: 'My Cart'),
      body: MyCartViewBody(),
    );
  }
}
