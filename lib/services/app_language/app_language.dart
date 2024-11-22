

import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';

class AppLanguage {

  Locale? _appLocale ;
  Locale? get appLocal => _appLocale ;


  fetchLocale() async {
    final box = GetStorage();
    if (box.read('language_code') == null) {
      _appLocale = const Locale('en');
      return null;
    }
    String local = box.read('language_code') ?? 'en';
    _appLocale = Locale(local.toString());
    return null;
  }

  void changeLanguage(Locale type) async {
    final box = GetStorage();
    if (_appLocale == type) {
      return;
    }
    if (type ==const Locale("es")) {
      if (kDebugMode) {
        print(type);
      }
      _appLocale =const Locale("es");
      await box.write('language_code', 'es');
      await box.write('countryCode', 'es');
    } else {
      if (kDebugMode) {
        print(type);
      }
      _appLocale = const Locale("en");
      await box.write('language_code', 'en');
      await box.write('countryCode', 'en');
    }
  }
}