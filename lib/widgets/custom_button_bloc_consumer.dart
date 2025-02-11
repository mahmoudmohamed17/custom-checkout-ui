import 'package:custom_checkout_ui/managers/payment_cubit/payment_cubit.dart';
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
            // var model = PaymentIntentInputModel(
            //     amount: '1000',
            //     currency: 'USD',
            //     customerId: 'cus_RkitKIAWBSCUIo');
            // // we use a static customer id as we just making a single feature
            // // but in a real app we have to fetch a customer id using the stripe api
            // context.read<PaymentCubit>().makePayment(model: model);

            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => PaypalCheckoutView(
                sandboxMode: true,
                clientId: "YOUR CLIENT ID",
                secretKey: "YOUR SECRET KEY",
                transactions: const [
                  {
                    "amount": {
                      "total": "100",
                      "currency": "USD",
                      "details": {
                        "subtotal": "100",
                        "shipping": "0",
                        "shipping_discount": 0
                      }
                    },
                    "description": "The payment transaction description.",
                    "item_list": {
                      "items": [
                        {
                          "name": "Apple",
                          "quantity": 4,
                          "price": "10",
                          "currency": "USD"
                        },
                        {
                          "name": "Pineapple",
                          "quantity": 5,
                          "price": "12",
                          "currency": "USD"
                        }
                      ]
                    }
                  }
                ],
                note: "Contact us for any questions on your order.",
                onSuccess: (Map params) async {
                  Navigator.pop(context);
                },
                onError: (error) {
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
