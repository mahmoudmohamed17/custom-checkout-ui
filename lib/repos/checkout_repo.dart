import 'package:custom_checkout_ui/errors/failure.dart';
import 'package:custom_checkout_ui/models/payment_intent_input_model.dart';
import 'package:dartz/dartz.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel model});
}
