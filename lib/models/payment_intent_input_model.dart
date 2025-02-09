class PaymentIntentInputModel {
  final String amount, currency;

  PaymentIntentInputModel({required this.amount, required this.currency});

  // convert the data into json formate indeed to create the payment intent model
  // using the post request from the stripe api
  Map<String, dynamic> toJson() => {
        "amount": amount,
        "currency": currency,
      };
}
