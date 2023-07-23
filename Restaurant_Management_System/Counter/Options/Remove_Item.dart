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


  print('${Order[removeItem-1]['Item']} is removed');

  switch (removeItem) {
    case 1 :
            Order.removeAt(0);
      break;
    case 2 :
            Order.removeAt(1);
      break;
    case 3 :
            Order.removeAt(2);
      break;
    case 4:
            Order.removeAt(3);
      break;
    case 5 :
            Order.removeAt(4);
      break;
    case 6 :
            Order.removeAt(5);
      break;
    case 7 :
            Order.removeAt(6);
      break;
    case 8 :
            Order.removeAt(7);
      break;
    default:
            isCounter();
  }  
}

void main (){
  isRemoveItem();
}