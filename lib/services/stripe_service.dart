import 'package:custom_checkout_ui/models/payment_intent_input_model.dart';
import 'package:custom_checkout_ui/models/payment_intent_model/payment_intent_model.dart';
import 'package:custom_checkout_ui/services/api_service.dart';
import 'package:custom_checkout_ui/utils/api_keys.dart';

class StripeService {
  final _apiService = ApiService();
  final url = 'https://api.stripe.com/v1/payment_intents';

  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel model) async {
    var response = await _apiService.post(
        body: model.toJson(), url: url, token: ApiKeys.secretKey);
    var paymentIntentModel = PaymentIntentModel.fromJson(
        response.data); // parsing the data from resonse
    return paymentIntentModel;
  }
}
