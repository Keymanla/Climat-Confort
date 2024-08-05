import 'package:climat_confort/app/data/enums/theme_enum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final _box = GetStorage();
  final _key = 'theme';

  // Initial theme is system
  var _currentTheme = AppTheme.system.obs;

  AppTheme get currentTheme => _currentTheme.value;

  ThemeMode get themeMode {
    switch (_currentTheme.value) {
      case AppTheme.light:
        return ThemeMode.light;
      case AppTheme.dark:
        return ThemeMode.dark;
      case AppTheme.system:
      default:
        return ThemeMode.system;
    }
  }

  @override
  void onInit() {
    super.onInit();
    _loadThemeFromBox();
  }

  void _saveThemeToBox(AppTheme theme) {
    _box.write(_key, theme.index);
  }

  void _loadThemeFromBox() {
    int themeIndex = _box.read(_key) ?? AppTheme.system.index;
    _currentTheme.value = AppTheme.values[themeIndex];
  }

  void setTheme(AppTheme theme) {
    _currentTheme.value = theme;
    _saveThemeToBox(theme);
  }
}
