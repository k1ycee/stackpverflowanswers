import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:stackoverflow/themes/darkMode.dart';
import 'package:stackoverflow/themes/lightMode.dart';

class ThemeViewModel extends ChangeNotifier {
  // bool _lightThemeBool = true;
  // bool _darkThemeBool = false;
  // bool _purpleThemeBool = false;
  // bool _redThemeBool = false;
  // bool _blueThemeBool = false;
  // bool _yellowThemeBool = false;
  // bool _pinkThemeBool = false;
  // bool _greenThemeBool = false;

  // bool get blueThemeBool => _blueThemeBool;

  bool _newTheme = false;
  bool get newTheme => _newTheme;
  ThemeData _appTheme = lightTheme;
  ThemeData get appTheme => _appTheme;

  void toggleDarkTheme() async {
    _newTheme = !_newTheme;
    var box = await Hive.openBox('theme');

    if (box.isNotEmpty) {
      box.delete('newTheme');
    }
    if (_newTheme) {
      _appTheme = darkTheme;
      box.put('newTheme', _newTheme);
      notifyListeners();
    } else {
      _appTheme = lightTheme;
      box.put('newTheme', _newTheme);
      notifyListeners();
    }
  }

  void toggleBlueTheme() async {
    _newTheme = !_newTheme;
    var box = await Hive.openBox('theme');
    if (box.isNotEmpty) {
      box.delete('newTheme');
    }
    if (_newTheme) {
      _appTheme = darkTheme;
      box.put('newTheme', _newTheme);
      notifyListeners();
    } else {
      _appTheme = lightTheme;
      box.put('newTheme', _newTheme);
      notifyListeners();
    }
  }

  void setAppTheme() async {
    try {
      var box = await Hive.openBox('onboarding');
      bool theNewTheme = box.get('newTheme') ?? false;
      _newTheme = theNewTheme;
      if (theNewTheme) {
        _appTheme = darkTheme;
        notifyListeners();
      } else {
        _appTheme = lightTheme;
        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }
}
