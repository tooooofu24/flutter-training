import 'package:flutter/material.dart';
import 'package:flutter_training/screens/main_screen.dart';
import 'package:flutter_training/state/main_state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainState(),
      child: const MaterialApp(
        title: 'Namer App',
        home: MainScreen(),
      ),
    );
  }
}
