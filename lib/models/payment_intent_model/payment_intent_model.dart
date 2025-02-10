class PaymentIntentModel {
  dynamic id;
  dynamic object;
  int? amount;
  int? amountCapturable;
  int? amountReceived;
  dynamic application;
  dynamic applicationFeeAmount;
  dynamic canceledAt;
  dynamic cancellationReason;
  dynamic captureMethod;
  dynamic clientSecret;
  dynamic confirmationMethod;
  int? created;
  dynamic currency;
  dynamic customer;
  dynamic description;
  dynamic invoice;
  dynamic lastPaymentError;
  dynamic latestCharge;
  bool? livemode;
  dynamic nextAction;
  dynamic onBehalfOf;
  dynamic paymentMethod;
  List<dynamic>? paymentMethodTypes;
  dynamic processing;
  dynamic receiptEmail;
  dynamic review;
  dynamic setupFutureUsage;
  dynamic shipping;
  dynamic source;
  dynamic statementDescriptor;
  dynamic statementDescriptorSuffix;
  dynamic status;
  dynamic transferData;
  dynamic transferGroup;

  PaymentIntentModel({
    this.id,
    this.object,
    this.amount,
    this.amountCapturable,
    this.amountReceived,
    this.application,
    this.applicationFeeAmount,
    this.canceledAt,
    this.cancellationReason,
    this.captureMethod,
    this.clientSecret,
    this.confirmationMethod,
    this.created,
    this.currency,
    this.customer,
    this.description,
    this.invoice,
    this.lastPaymentError,
    this.latestCharge,
    this.livemode,
    this.nextAction,
    this.onBehalfOf,
    this.paymentMethod,
    this.paymentMethodTypes,
    this.processing,
    this.receiptEmail,
    this.review,
    this.setupFutureUsage,
    this.shipping,
    this.source,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    this.status,
    this.transferData,
    this.transferGroup,
  });

  factory PaymentIntentModel.fromJson(Map<String, dynamic> json) {
    return PaymentIntentModel(
      id: json['id'],
      object: json['object'],
      amount: json['amount'],
      amountCapturable: json['amount_capturable'],
      amountReceived: json['amount_received'],
      application: json['application'],
      applicationFeeAmount: json['application_fee_amount'],
      canceledAt: json['canceled_at'],
      cancellationReason: json['cancellation_reason'],
      captureMethod: json['capture_method'],
      clientSecret: json['client_secret'],
      confirmationMethod: json['confirmation_method'],
      created: json['created'],
      currency: json['currency'],
      customer: json['customer'],
      description: json['description'],
      invoice: json['invoice'],
      lastPaymentError: json['last_payment_error'],
      latestCharge: json['latest_charge'],
      livemode: json['livemode'],
      nextAction: json['next_action'],
      onBehalfOf: json['on_behalf_of'],
      paymentMethod: json['payment_method'],
      paymentMethodTypes: json['payment_method_types'],
      processing: json['processing'],
      receiptEmail: json['receipt_email'],
      review: json['review'],
      setupFutureUsage: json['setup_future_usage'],
      shipping: json['shipping'],
      source: json['source'],
      statementDescriptor: json['statement_descriptor'],
      statementDescriptorSuffix: json['statement_descriptor_suffix'],
      status: json['status'],
      transferData: json['transfer_data'],
      transferGroup: json['transfer_group'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'object': object,
        'amount': amount,
        'amount_capturable': amountCapturable,
        'amount_received': amountReceived,
        'application': application,
        'application_fee_amount': applicationFeeAmount,
        'canceled_at': canceledAt,
        'cancellation_reason': cancellationReason,
        'capture_method': captureMethod,
        'client_secret': clientSecret,
        'confirmation_method': confirmationMethod,
        'created': created,
        'currency': currency,
        'customer': customer,
        'description': description,
        'invoice': invoice,
        'last_payment_error': lastPaymentError,
        'latest_charge': latestCharge,
        'livemode': livemode,
        'next_action': nextAction,
        'on_behalf_of': onBehalfOf,
        'payment_method': paymentMethod,
        'payment_method_types': paymentMethodTypes,
        'processing': processing,
        'receipt_email': receiptEmail,
        'review': review,
        'setup_future_usage': setupFutureUsage,
        'shipping': shipping,
        'source': source,
        'statement_descriptor': statementDescriptor,
        'statement_descriptor_suffix': statementDescriptorSuffix,
        'status': status,
        'transfer_data': transferData,
        'transfer_group': transferGroup,
      };
}
