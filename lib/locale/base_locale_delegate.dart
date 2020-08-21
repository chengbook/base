import 'package:base/locale/base_locale.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class BaseLocaleDelegate<T extends BaseLocale> extends LocalizationsDelegate<T> {
  @override
  bool isSupported(Locale locale) {
    return ['zh'].contains(locale.languageCode);
  }

  @override
  bool shouldReload(LocalizationsDelegate<T> old) {
    return false;
  }

  @override
  Future<T> load(Locale locale) {
    return SynchronousFuture<T>(appLocale(locale));
  }

  T appLocale(Locale locale);
}