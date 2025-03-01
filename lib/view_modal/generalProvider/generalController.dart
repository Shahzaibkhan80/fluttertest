import 'package:flutter/material.dart';

class GeneralProvider extends ChangeNotifier {
  final List<Map<String, String>> stories = [
    {"name": "waqas", "image": "assets/images/profileimage.png"},
    {"name": "Shahzaib", "image": "assets/images/image.jpg"},
    {"name": "Waqas", "image": "assets/images/profileimage.png"},
    {"name": "Shahzaib", "image": "assets/images/image.jpg"},
  ];

  int selectedIndex = 0;

  void setTabIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
