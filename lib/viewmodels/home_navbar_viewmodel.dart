import 'package:flutter/material.dart';

class HomeNavbarViewmodel extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setCurrentIndex(int index) {
    if (index != _currentIndex) {
      _currentIndex = index;
      notifyListeners();
    }
  }

  void resetCurrentIndex() {
    _currentIndex = 0;
    notifyListeners();
  }
}
