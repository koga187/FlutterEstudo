import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool isDarkTheme = false;
  int counter = 0;

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }

  incrementCounter() {
    counter++;
    notifyListeners();
  }
}
