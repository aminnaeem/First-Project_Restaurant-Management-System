import 'dart:io';

import 'Counter/isCounter.dart';

List<Map> userRecord = [
  {'Username' : 'admin', 'Password' : '123456'},
  {'Username' : 'counter', 'Password' : '111111'},
  {'Username' : 'kitchen', 'Password' : '222222'},
  ];

void main () {
  print('Welcome to the Restaurant Management System');
  print('');
  bool isLogin = false;

  print('Enter your Username');
  String userName = stdin.readLineSync()!;
  print('Enter your Password');
  String password = stdin.readLineSync()!;

  while (isLogin == false) {
    for (var record in userRecord) {
      if (userName == record['Username'] && password == record['Password']) {
        isLogin = true;
      }
    }

    if (isLogin) {
      print('Login Successful');
    }
    else{
        print('Incorrect Username or Password');
    }
  }
  if (userName == userRecord[1]['Username']) {
    isCounter();
  }
}