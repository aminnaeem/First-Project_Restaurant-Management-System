import 'dart:io';

isCounter () {
  print('Select an option');
  print('1. Create Order');
  print('2. Add item to Existing Order');
  print('3. Remove item from Existing Order');
  print('4. Print Bill');
  print('5. Logout');
  String option = stdin.readLineSync()!;
  bool selectOption = false;

  while (selectOption == false) {
    if (option == '1') {
      print('abc');
    }
    else if (option == '2') {

    }
    else if (option == '3') {

    }
    else if (option == '4') {

    }
    else if (option == '5') {
    print('Thanks for using Restaurant Management System');
    selectOption = true;
    }
  }
}
  