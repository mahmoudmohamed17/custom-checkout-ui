import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:custom_checkout_ui/models/payment_intent_input_model.dart';
import 'package:custom_checkout_ui/repos/checkout_repo_impl.dart';
part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentInitial());

  final _checkoutRepo = CheckoutRepoImpl();

  Future<void> makePayment({required PaymentIntentInputModel model}) async {
    emit(PaymentLoading());
    var result = await _checkoutRepo.makePayment(model: model);
    result.fold((failed) {
      emit(PaymentFailed(message: failed.message));
    }, (success) {
      emit(PaymentSuccess());
    });
  }

  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
