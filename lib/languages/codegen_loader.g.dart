// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru = {
  "Welcome": "Добро пожаловать",
  "Set": "Настройки",
  "This": "Это приложение создано для меня, чтобы я мог использовать пакет «easy_localization» и учиться."
};
static const Map<String,dynamic> ky = {
  "Welcome": "Кош келдиңиз",
  "Set": "Орнотуулар",
  "This": "Бул колдонмо мага «easy_localization» топтомун колдонуу жана үйрөнүү үчүн жасалган."
};
static const Map<String,dynamic> en = {
  "Welcome": "Welcome",
  "Set": "Settings",
  "This": "This app is made for me so that I can use this «easy_localization» package and learn."
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru, "ky": ky, "en": en};
}
