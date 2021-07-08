import 'package:flutter/material.dart';

class UserAgeNotifier extends ChangeNotifier {
  int _userAge = 0;

  int get userAge => _userAge;

  updateUserAge(int age) {
    _userAge = age;
    notifyListeners();
  }
}
