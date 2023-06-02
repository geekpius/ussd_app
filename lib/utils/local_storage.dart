
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage{



  Future<void> encodeAndSaveToLocalStorage(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    String encodeData = jsonEncode(value);
    await prefs.setString(key, encodeData);
  }

  Future<void> saveStringDataToLocalStorage(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<void> saveIntegerDataToLocalStorage(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(key, value);
  }

  Future<void> saveDoubleDataToLocalStorage(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(key, value);
  }

  Future<void> saveBoolDataToLocalStorage(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }


  Future<void> reloadDataFromLocalStorage() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.reload();
  }

  Future<void> removeStoredDataFromLocalStorage(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  Future<Map<String, dynamic>> getDecodedDataFromLocalStorageAsMap(String key) async {
    final prefs = await SharedPreferences.getInstance();
    var data = prefs.getString(key);
    return (data != null) ? jsonDecode(data) : {};
  }

  Future<dynamic> getDecodedDataFromLocalStorageAsDynamic(String key) async {
    final prefs = await SharedPreferences.getInstance();
    var data = prefs.getString(key);
    return data != null? jsonDecode(data): null;
  }

  Future<String?> getStringDataFromLocalStorage(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  Future<int?> getIntDataFromLocalStorage(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  Future<double?> getDoubleDataFromLocalStorage(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key);
  }

  Future<bool?> getBoolDataFromLocalStorage(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }


}