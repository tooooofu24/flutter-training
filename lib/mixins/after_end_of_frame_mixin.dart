import 'package:flutter/material.dart';

mixin AfterEndOfFrameMixin<T extends StatefulWidget> on State<T> {
  void afterEndOfFrame(void Function() callback) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callback();
    });
  }
}
