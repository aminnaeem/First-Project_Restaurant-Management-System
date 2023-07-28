import 'dart:io';

import '../isCounter.dart';
import 'Create_Order.dart';

isRemoveItem () {
  print('Select Item to remove or Press any key for Main Menu');
  print('');

  int n = 1 ;
  for (var item in Order) {
    String itemName = item['Item'];
    int itemQuantity = item['Quantity'];
    int itemPrice = item['Price'];
    int totalItemPrice = item['Total'];
    print('$n. $itemQuantity $itemName  Price: $itemPrice  Total: $totalItemPrice');
    n++;
  };

  String ri = stdin.readLineSync()!;
  int removeItem = int.parse(ri);

  if (removeItem > 0 && removeItem < Order.length) {
    print('${Order[removeItem-1]['Item']} is removed from your order');
    Order.removeAt(removeItem-1);
  }
  else{
    return isCounter();
  }
}

void main (){
  isRemoveItem();
}