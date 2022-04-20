import 'dart:io';

import 'package:flutter/material.dart';
import 'package:super_repository/super_repository.dart';

abstract class AppStore {
  static final _local = SuperRepository.provider.local;

  static set setLocaleCode(String languageCode) =>
      _local.save(key: 'selected-language', value: languageCode);

  static Locale get getLocale => Locale(_local.get(key: 'selected-language') ??
      Platform.localeName.substring(0, 2));

  static set setThemeMode(ThemeMode mode) =>
      _local.save(key: 'theme-mode', value: mode.toString());

  static ThemeMode get getThemeMode {
    final mode = _local.get(key: 'theme-mode') ?? ThemeMode.system.toString();
    if (mode == ThemeMode.dark.toString()) return ThemeMode.dark;
    return ThemeMode.light;
  }
}
