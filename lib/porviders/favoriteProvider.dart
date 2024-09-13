import 'package:flutter/material.dart';

class Favoriteprovider extends ChangeNotifier {
  IconData icon = Icons.star_outline;

  void favoriteChecked() {
    if (icon == Icons.star_outline) {
      icon = Icons.star;
    } else {
      icon = Icons.star_outline;
    }
    notifyListeners();
  }
}
