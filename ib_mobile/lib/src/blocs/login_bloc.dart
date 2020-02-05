import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginBloc with ChangeNotifier {
  final String _freshInstallationStatusKey = "app-just-installed";
  bool isFreshlyInstalled;

  LoginBloc() {
    this._loadFreshInstallationStatus();
  }

  void _saveToPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_freshInstallationStatusKey, isFreshlyInstalled);
  }

  void changeFreshInstallationStatus() {
    isFreshlyInstalled = false;
    notifyListeners();
    _saveToPreference();
  }

  void _loadFreshInstallationStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isFreshlyInstalled = prefs.getBool(_freshInstallationStatusKey) ?? true;
    notifyListeners();
  }
}
