

import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorageService{
  static final LocalStorageService _localStorage = LocalStorageService._internal();
  factory LocalStorageService() => _localStorage;
  LocalStorageService._internal();

  static late FlutterSecureStorage _storage;

  Future<void> init() async {
    AndroidOptions getAndroidOptions() => const AndroidOptions(
      encryptedSharedPreferences: true,
    );
    _storage = FlutterSecureStorage(aOptions: getAndroidOptions());
  }

  Future<void> write(String key, String? value) => _storage.write(key: key, value: value);

  Future<String?> read(String key) => _storage.read(key: key);

  Future<Map<String, String>> readAll() => _storage.readAll();

  Future<void> deleteAll() => _storage.deleteAll();

  Future<void> delete(String key) => _storage.delete(key: key);

  Future<void> encodeAndWrite(String key, dynamic value) => _storage.write(key: key, value: jsonEncode(value));

  Future<Map> decodeAndReadMap(String key) async {
    String? data = await _storage.read(key: key);
    return data == null? {} : jsonDecode(data);
  }

  Future<dynamic> decodeAndRead(String key) async {
    String? data = await _storage.read(key: key);
    return data == null? null : jsonDecode(data);
  }

}