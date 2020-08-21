import 'package:shared_preferences/shared_preferences.dart';

class Sp {
  SharedPreferences _sharedPreferences;

  Sp._() {
    _init();
  }

  static Sp _sp = Sp._();

  factory Sp.instance() => _sp;

  void _init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<bool> setString(String key, String value) {
    return _sharedPreferences.setString(key, value);
  }

  String getString(String key) {
    return _sharedPreferences.getString(key);
  }

  Future<bool> setBool(String key, bool value) {
    return _sharedPreferences.setBool(key, value);
  }

  bool getBool(String key) {
    return _sharedPreferences.getBool(key);
  }

  Future<bool> setInt(String key, int value) {
    return _sharedPreferences.setInt(key, value);
  }

  int getInt(String key) {
    return _sharedPreferences.getInt(key);
  }

  Future<bool> setDouble(String key, double value) {
    return _sharedPreferences.setDouble(key, value);
  }

  double getDouble(String key) {
    return _sharedPreferences.getDouble(key);
  }

  Future<bool> setStringList(String key, List<String> value) {
    return _sharedPreferences.setStringList(key, value);
  }

  List<String> getStringList(String key) {
    return _sharedPreferences.getStringList(key);
  }

  bool containsKey(String key) {
    return _sharedPreferences.containsKey(key);
  }

  get(String key) {
    return _sharedPreferences.get(key);
  }

  Set<String> getKeys() {
    return _sharedPreferences.getKeys();
  }

  Future<bool> clear() {
    return _sharedPreferences.clear();
  }

  Future<bool> remove(String key) {
    return _sharedPreferences.remove(key);
  }
}
