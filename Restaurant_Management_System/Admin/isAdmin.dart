import 'dart:developer';
import 'dart:io';

import '../Counter/isCounter.dart';
import '../Kitchen/isKitchen.dart';

isAdmin () {
  print('Welcome to Admin Panel');
  print('');
  print('1. Counter Module');
  print('2. Kitchen Module');
  print('3. Orders Summary');
  print('4. Stock Summary');
  print('5. Logout');
  
  String selectOption = stdin.readLineSync()!;
  bool isAdmin = true;

  while (isAdmin) {
    if (selectOption == '1') {
      isCounter();
    }
    else if (selectOption == '2') {
      isKitchen();
    }
    else if (selectOption == '3') {

    }
    else if (selectOption == '4') {

    }
    else if (selectOption == '5') {
      print('Thanks for using Restaurant Management System');
      isAdmin = false;
    }
    else {
      print('invalid Command. Please select a valid Option');
      selectOption = stdin.readLineSync()!;
    }
  }
  

}