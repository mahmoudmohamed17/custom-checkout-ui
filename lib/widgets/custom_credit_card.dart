import 'package:flutter/material.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard(
      {super.key, required this.formKey, required this.autovalidateMode});
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Placeholder();
    // return Column(
    //   children: [
    // CreditCardWidget(
    //   cardNumber: cardNumber,
    //   expiryDate: expiryDate,
    //   cardHolderName: cardHolderName,
    //   cvvCode: cvvCode,
    //   showBackView: showBackView,
    //   onCreditCardWidgetChange: (value) {},
    //   isHolderNameVisible: true,
    // ),
    // CreditCardForm(
    //     autovalidateMode: widget.autovalidateMode,
    //     cardNumber: cardNumber,
    //     expiryDate: expiryDate,
    //     cardHolderName: cardHolderName,
    //     cvvCode: cvvCode,
    //     onCreditCardModelChange: (creditCardModel) {
    //       cardNumber = creditCardModel.cardNumber;
    //       expiryDate = creditCardModel.expiryDate;
    //       cardHolderName = creditCardModel.cardHolderName;
    //       cvvCode = creditCardModel.cvvCode;
    //       showBackView = creditCardModel.isCvvFocused;
    //       setState(() {});
    //     },
    //     formKey: widget.formKey),
    //   ],
    // );
  }
}
