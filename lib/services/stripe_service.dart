import 'package:custom_checkout_ui/models/payment_intent_input_model.dart';
import 'package:custom_checkout_ui/models/payment_intent_model/payment_intent_model.dart';
import 'package:custom_checkout_ui/services/api_service.dart';
import 'package:custom_checkout_ui/utils/api_keys.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  final _apiService = ApiService();
  final url = 'https://api.stripe.com/v1/payment_intents';

  // step 1
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel model) async {
    var response = await _apiService.post(
        url: url,
        body: model.toJson(),
        token: ApiKeys.secretKey,
        contentType: Headers.formUrlEncodedContentType);
    var paymentIntentModel = PaymentIntentModel.fromJson(
        response.data); // parsing the data from response
    return paymentIntentModel;
  }

  // step 2
  Future<void> initPaymentSheet(
      {required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: paymentIntentClientSecret,
      merchantDisplayName: 'Mahmoud Mohamed',
    ));
  }

  // step 3
  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  // trigger this to excute the three main steps
  Future<void> makePayment({required PaymentIntentInputModel model}) async {
    var paymentIntentModel = await createPaymentIntent(model);
    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentModel.clientSecret!);
    await displayPaymentSheet();
  }
}
