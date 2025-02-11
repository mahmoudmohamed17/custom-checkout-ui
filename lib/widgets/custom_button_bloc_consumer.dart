import 'dart:developer';

import 'package:custom_checkout_ui/funcs/get_transaction_data.dart';
import 'package:custom_checkout_ui/managers/payment_cubit/payment_cubit.dart';
import 'package:custom_checkout_ui/models/transaction_model/transaction_model.dart';
import 'package:custom_checkout_ui/utils/api_keys.dart';
import 'package:custom_checkout_ui/utils/snack_bar.dart';
import 'package:custom_checkout_ui/views/thank_you_view.dart';
import 'package:custom_checkout_ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

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
            // Test for Stripe
            // var model = PaymentIntentInputModel(
            //     amount: '1000',
            //     currency: 'USD',
            //     customerId: 'cus_RkitKIAWBSCUIo');
            // // we use a static customer id as we just making a single feature
            // // but in a real app we have to fetch a customer id using the stripe api
            // context.read<PaymentCubit>().makePayment(model: model);

            var transactionData = getTransactionData();
            var transactionModel = TransactionModel(
                amount: transactionData.amount,
                description: transactionData.description,
                itemList: transactionData.itemList);

            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => PaypalCheckoutView(
                sandboxMode: true,
                clientId: ApiKeys.clientPaypalId,
                secretKey: ApiKeys.secretPaypalKey,
                transactions: [
                  {
                    "amount": transactionModel.amount,
                    "description": transactionModel.description,
                    "item_list": transactionModel.itemList,
                  }
                ],
                note: "Contact us for any questions on your order.",
                onSuccess: (Map params) async {
                  log('Success: ${params.toString()}');
                  Navigator.pop(context);
                },
                onError: (error) {
                  log('Error: ${error.toString()}');
                  Navigator.pop(context);
                },
                onCancel: () {
                  Navigator.pop(context);
                },
              ),
            ));
          },
        );
      },
    );
  }
}
