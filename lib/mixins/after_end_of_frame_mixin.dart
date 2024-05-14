import 'package:flutter/material.dart';

mixin AfterEndOfFrameMixin {
  void afterEndOfFrame(void Function() callback) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callback();
    });
  }
}
