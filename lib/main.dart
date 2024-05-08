import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final halfWidth = screenWidth / 2;

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: halfWidth,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Placeholder(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            '** ℃',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            '** ℃',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: TextButton(
                            onPressed: null,
                            child: Text('Close'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: TextButton(
                            onPressed: null,
                            child: Text('Reload'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
