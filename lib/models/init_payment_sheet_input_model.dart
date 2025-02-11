class InitPaymentSheetInputModel {
  final String clientSecret, customerId, ephemeralKey;

  InitPaymentSheetInputModel(
      {required this.clientSecret,
      required this.customerId,
      required this.ephemeralKey});
}
