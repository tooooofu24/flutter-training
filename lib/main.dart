import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FractionallySizedBox(
            widthFactor: 0.5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                Column(
                  children: [
                    const AspectRatio(
                      aspectRatio: 1,
                      child: Placeholder(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              '** ℃',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(color: Colors.blue),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '** ℃',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(color: Colors.red),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16, bottom: 16),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextButton(
                                onPressed: null,
                                child: Text('Close'),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: null,
                                child: Text('Reload'),
                              ),
                            ),
                          ],
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
