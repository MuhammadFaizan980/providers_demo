

import 'package:flutter/material.dart';

class UserNameNotifier extends ChangeNotifier {
  String _userName = 'Old Name';

  String get userName => _userName;

  changeUserName(String name) {
    _userName = name;
    notifyListeners();
  }
}
