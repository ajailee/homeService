import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _currentTheme = ThemeMode.system;
  get currentTheme {
    return _currentTheme;
  }

  set currentTheme(theme) {
    _currentTheme = theme;
    notifyListeners();
  }
}
