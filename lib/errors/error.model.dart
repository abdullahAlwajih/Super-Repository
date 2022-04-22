import 'package:flutter/material.dart';

import 'error_asset.static.dart';
import 'exceptions.enum.wings.dart';
import 'exceptions.dart';

class ErrorModel {
  final String message;
  Color borderColor;
  Color backgroundColor;
  String icon = ErrorAssets.defaultIcon;
  String image = ErrorAssets.defaultImage;
  Exceptions? exception;

  ErrorModel({
    required this.message,
    this.borderColor = const Color(0xffFF434F),
    this.backgroundColor = const Color(0xffFEE8E9),
    this.icon = '',
    this.image = '',
    this.exception,
  }) {
    if (icon.isEmpty) icon = ErrorAssets.defaultIcon;
    if (image.isEmpty) image = ErrorAssets.defaultImage;
    // exception ??= Exceptions.fromEnumeration(ExceptionTypes.unexpected);
  }
}
