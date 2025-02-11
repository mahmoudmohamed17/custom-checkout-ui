import 'package:custom_checkout_ui/models/transaction_model/amount.dart';
import 'package:custom_checkout_ui/models/transaction_model/item_list.dart';

class TransactionModel {
  final Amount amount;
  final String description;
  final ItemList itemList;

  TransactionModel({
    required this.amount,
    required this.description,
    required this.itemList,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      amount: Amount.fromJson(json['amount']),
      description: json['description'],
      itemList: ItemList.fromJson(json['item_list']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "amount": amount.toJson(),
      "description": description,
      "item_list": itemList.toJson(),
    };
  }
}
