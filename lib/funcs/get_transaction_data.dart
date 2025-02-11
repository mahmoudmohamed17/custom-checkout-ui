import 'package:custom_checkout_ui/models/transaction_model/amount.dart';
import 'package:custom_checkout_ui/models/transaction_model/details.dart';
import 'package:custom_checkout_ui/models/transaction_model/item.dart';
import 'package:custom_checkout_ui/models/transaction_model/item_list.dart';

// return a record of data
({Amount amount, String description, ItemList itemList}) getTransactionData() {
  var amount = Amount(
    total: '7100',
    currency: 'USD',
    details: Details(shipping: '0', shippingDiscount: 0, subtotal: '7100'),
  );

  var itemList = ItemList(items: [
    Item(name: 'iPhone 13 pro', quantity: 1, price: '2500', currency: 'USD'),
    Item(name: 'Samsung A04s', quantity: 2, price: '2300', currency: 'USD'),
  ]);
  return (amount: amount, description: 'Hello world!', itemList: itemList);
}
