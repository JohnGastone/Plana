import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; 
class ThemeProvider extends ChangeNotifier {
  ThemeProvider() {
    _loadThemeMode();
  }

  ThemeMode _themeMode = ThemeMode.light; 

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode =
        (_themeMode == ThemeMode.light) ? ThemeMode.dark : ThemeMode.light;
    _saveThemeMode(); 
    notifyListeners();
  }

  void _saveThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', _themeMode == ThemeMode.dark);
  }

  void _loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    _themeMode =
        prefs.getBool('isDarkMode') ?? false ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
