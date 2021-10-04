import 'package:flutter/material.dart';

class ShoppingCart with ChangeNotifier {
  final List<String> _shoppingList = ['Jeans', 'Tshirt', 'Pant'];
  int get count => _shoppingList.length;
  List<String> get cart => _shoppingList;

  void addItem(String item) {
    _shoppingList.add(item);
    notifyListeners();
  }
}
