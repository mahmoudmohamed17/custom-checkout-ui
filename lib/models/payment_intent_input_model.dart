class PaymentIntentInputModel {
  final String amount, currency, customerId;

  PaymentIntentInputModel(
      {required this.amount, required this.currency, required this.customerId});

  // convert the data into json formate indeed to create the payment intent model
  // using the post request from the stripe api
  Map<String, dynamic> toJson() => {
        "amount": '${amount}00',
        "currency": currency,
        "customer": customerId,
      };
}
