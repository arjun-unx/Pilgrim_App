import 'package:flutter/cupertino.dart';

class travelAppState extends ChangeNotifier{
  int selectedCategoryId = 0;
  void updateCategory(int selectedCategory) {
    selectedCategoryId = selectedCategory;
    notifyListeners();
  }
}