import 'dart:io';

import 'Create_Order.dart';

DateTime now = DateTime.now();
String formatDate(DateTime dateTime) {
  return "${dateTime.day}-${dateTime.month}-${dateTime.year}";
}

String formatTime(DateTime dateTime) {
  return "${dateTime.hour}:${dateTime.minute}:${dateTime.second}";
}
String Date = formatDate(now);
String Time = formatTime(now);


bool isPrintBill () {
  print('Spicy Tonight');
  print('');
  print('Bill');
  print('');
  print('Date: $Date, Time: $Time');
  print('');

  Order.forEach((item) { 
    String itemName = item['Item'];
    int itemQuantity = item['Quantity'];
    int itemPrice = item['Price'];
    int totalItemPrice = item['Total'];
    print('$itemQuantity $itemName  Price: $itemPrice  Total: $totalItemPrice');
  });
  num totalAmount = 0;
  for (var item in Order) {
    totalAmount += item['Total'];
  }
  print('-----------------------------');
  print('Total Amount: Rs. $totalAmount/-');
  print('Cash Received:');
  String cashR = stdin.readLineSync()!;
  int cashReceived = int.parse(cashR);
  print('Cash Returned: Rs. ${cashReceived-totalAmount}/-');
  print('-----------------------------');
  print('Thanks for Visiting Spicy Tonight');
  print('');
  print('Press any key to Main Menu');

  String? rtn = stdin.readLineSync(); 
  return true;
}