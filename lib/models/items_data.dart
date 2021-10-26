import 'package:flutter/material.dart';
import 'package:get_it_done/models/item.dart';

class ItemData with ChangeNotifier {
  final List<Item> items = [
    Item(title: 'Test 1'),
    Item(title: 'Test 2'),
    Item(title: 'Test 4')
  ];

  void toggleStatus(int index) {
    items[index].toggleStatus();
    notifyListeners();
  }

  void itemadd(String txt) {
    items.add(Item(title: txt));
    notifyListeners();
  }

  void itemremove(int index) {
    items.removeAt(index);
    notifyListeners();
  }
}
