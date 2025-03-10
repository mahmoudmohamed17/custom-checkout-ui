part of 'payment_cubit.dart';

class PaymentState {}

final class PaymentInitial extends PaymentState {}

final class PaymentLoading extends PaymentState {}

final class PaymentSuccess extends PaymentState {}

final class PaymentFailed extends PaymentState {
  final String message;

  PaymentFailed({required this.message});
}
