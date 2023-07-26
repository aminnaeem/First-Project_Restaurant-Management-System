import 'dart:io';

import 'Functions/Add_Item.dart';
import 'Functions/Create_Order.dart';
import 'Functions/Print_Bill.dart';
import 'Functions/Remove_Item.dart';

isCounter () {
  print('Select an option');
  print('1. Create Order');
  print('2. Add item to Existing Order');
  print('3. Remove item from Existing Order');
  print('4. Print Bill');
  print('5. Logout');
  String option = stdin.readLineSync()!;
  bool selectOption = true;

  while (selectOption == true) {
    if (option == '1') {
      isCreateOrder();
    }
    else if (option == '2') {
      isAddItem();
    }
    else if (option == '3') {
      isRemoveItem();
    }
    else if (option == '4') {
      isPrintBill();
    }
    else if (option == '5') {
      print('Thanks for using Restaurant Management System');
      selectOption = false;
    }
  }
}  