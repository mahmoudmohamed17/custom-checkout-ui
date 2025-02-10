import 'package:custom_checkout_ui/managers/payment_cubit/payment_cubit.dart';
import 'package:custom_checkout_ui/utils/api_keys.dart';
import 'package:custom_checkout_ui/views/my_cart_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MyCartView(),
      ),
    );
  }
}
