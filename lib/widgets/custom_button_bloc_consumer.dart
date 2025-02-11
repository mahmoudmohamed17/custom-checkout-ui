import 'package:custom_checkout_ui/managers/payment_cubit/payment_cubit.dart';
import 'package:custom_checkout_ui/models/payment_intent_input_model.dart';
import 'package:custom_checkout_ui/utils/build_snack_bar.dart';
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
          snackBar(context, 'An error occuered, please try again later.');
        }
      },
      builder: (context, state) {
        return CustomButton(
          label: 'Continue',
          isLoading: state is PaymentLoading ? true : false,
          onPressed: () {
            var model = PaymentIntentInputModel(
                amount: '1000',
                currency: 'USD',
                customerId: 'cus_RkitKIAWBSCUIo');
            // we use a static customer id as we just making a single feature
            // but in a real app we have to fetch a customer id using the stripe api
            context.read<PaymentCubit>().makePayment(model: model);
          },
        );
      },
    );
  }
}
