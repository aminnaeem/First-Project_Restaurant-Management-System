import 'dart:io';

import '../../Menu.dart';
import '../isCounter.dart';

List<Map> Order = [];

isCreateOrder () {
  print('Select Category to View Items or Press any Key to go back');
  for (var i = 0; i < menu.length; i++) {
    print('${i+1} ${menu[i].keys.first}');
  }

  String cSelect = stdin.readLineSync()!;
  int categorySelect = int.parse(cSelect);

  if (categorySelect >= 1 && categorySelect <= menu.length) {
    Map selectCategory = menu[categorySelect-1];
    String categoryName = selectCategory.keys.first;
    List items = selectCategory.values.first;

    print('Items in $categoryName');
    for (var i = 0; i < items.length; i++) {
      String itemName = items[i]['Item'];
      int itemPrice = items[i]['Price'];
      print('${i+1}. $itemName  Price: $itemPrice');
    }
    print('Select item to process Order');
    String iSelect = stdin.readLineSync()!;
    int itemSelect = int.parse(iSelect);

    if (itemSelect > 0 && itemSelect <= items.length) {
      Map selectedItems = items[itemSelect-1];
      String itemName = selectedItems['Item'];
      int itemPrice = selectedItems['Price'];

      print('Enter Quantity for $itemName');
      String qSelect = stdin.readLineSync()!;
      int Quantity = int.tryParse(qSelect) ?? 1;

      if (Quantity >= 1) {
        int totalItemPrice = itemPrice * Quantity;
        Order.add({'Item' : itemName, 'Price' : itemPrice, 'Quantity' : Quantity, 'Total' : totalItemPrice});

        if (Quantity > 1) {
          print('$Quantity ${itemName}s added');
        } else {
          print('$Quantity $itemName added');
        }
      }
      else {
        print('Invalid quantity. Quantity should be greater than 0.');
      }
    }
    else {
      print('Invalid item selection. Please select from available item numbers');
    }
  }
  else{
    print('object');
    isCounter();
  }

  print('Order Summary');
  Order.forEach((item) { 
    String itemName = item['Item'];
    int itemQuantity = item['Quantity'];
    int itemPrice = item['Price'];
    int totalItemPrice = item['Total'];
    print('$itemQuantity $itemName  Price: $itemPrice  Total: $totalItemPrice');
  });

}