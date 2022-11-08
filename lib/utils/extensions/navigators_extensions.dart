import 'package:flutter/material.dart';

extension NavigatorExtensions on BuildContext {
  Future<dynamic> appPushNamed(dynamic path) => Navigator.pushNamed(this, path);
}
