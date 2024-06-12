import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/components/main_result.dart';
import 'package:flutter_training/providers/weather_provider.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  Future<void> _showErrorDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('仮のテキスト'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weather = ref.watch(weatherProvider);

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
                    switch (weather) {
                      AsyncData(:final value) => MainResult(
                          weatherCondition: value.weatherCondition,
                        ),
                      AsyncError() =>
                        const Text('Oops, something unexpected happened'),
                      _ => const CircularProgressIndicator(),
                    },
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
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Close'),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () => ref.refresh(weatherProvider),
                                child: const Text('Reload'),
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
