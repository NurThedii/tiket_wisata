import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  void navigateTo(Widget page, {bool replace = false}) {
    if (replace) {
      Navigator.pushReplacement(
        this,
        MaterialPageRoute(builder: (context) => page),
      );
    } else {
      Navigator.push(
        this,
        MaterialPageRoute(builder: (context) => page),
      );
    }
  }
}
