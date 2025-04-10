import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _userLoginCount = 0;
  int get userLoginCount => _userLoginCount;
  set userLoginCount(int value) {
    _userLoginCount = value;
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool value) {
    _searchActive = value;
  }

  bool _isProfilePrivate = false;
  bool get isProfilePrivate => _isProfilePrivate;
  set isProfilePrivate(bool value) {
    _isProfilePrivate = value;
  }

  int _searchCount = 0;
  int get searchCount => _searchCount;
  set searchCount(int value) {
    _searchCount = value;
  }

  int _contactCount = 0;
  int get contactCount => _contactCount;
  set contactCount(int value) {
    _contactCount = value;
  }
}
