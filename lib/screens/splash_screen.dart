import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_training/mixins/after_end_of_frame_mixin.dart';
import 'package:flutter_training/screens/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterEndOfFrameMixin {
  @override
  void initState() {
    super.initState();
    afterEndOfFrame(_initialize);
  }

  Future<void> _initialize() async {
    await Future.delayed(const Duration(milliseconds: 500), () {
      Navigator.push(
        context,
        MaterialPageRoute<dynamic>(
          builder: (context) => const MainScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
    );
  }
}
