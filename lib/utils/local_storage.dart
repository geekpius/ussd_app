

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage{
  static final LocalStorage _localStorage = LocalStorage._internal();
  factory LocalStorage() => _localStorage;
  LocalStorage._internal();

  static late FlutterSecureStorage _storage;

  Future<void> init() async {
    AndroidOptions getAndroidOptions() => const AndroidOptions(
      encryptedSharedPreferences: true,
    );
    _storage = FlutterSecureStorage(aOptions: getAndroidOptions());
  }

  Future<void> write(String key, String? value) async => await _storage.write(key: key, value: value);

  Future<String?> read(String key) async => await _storage.read(key: key);

  Future<Map<String, String>> readAll() async => await _storage.readAll();

  Future<void> deleteAll() async => await _storage.deleteAll();

  Future<void> delete(String key) async => await _storage.delete(key: key);

}