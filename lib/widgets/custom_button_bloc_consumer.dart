import 'package:custom_checkout_ui/managers/payment_cubit/payment_cubit.dart';
import 'package:custom_checkout_ui/views/thank_you_view.dart';
import 'package:custom_checkout_ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ThankYouView()));
        }
        if (state is PaymentFailed) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      builder: (context, state) {
        return CustomButton(
          label: 'Continue',
          isLoading: state is PaymentLoading ? true : false,
          onPressed: () {},
        );
      },
    );
  }
}
