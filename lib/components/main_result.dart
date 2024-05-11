import 'package:flutter/material.dart';

class MainResult extends StatelessWidget {
  const MainResult({
    Key? key, // super.key を追加
    required this.weatherCondition,
  }) : super(key: key); // super() コンストラクタの呼び出しを追加

  final String weatherCondition;

  @override
  Widget build(BuildContext context) {
    IconData icon;
    Color iconColor;
    if (weatherCondition == 'sunny') {
      icon = Icons.wb_sunny;
      iconColor = Colors.red;
    } else if (weatherCondition == 'cloudy') {
      icon = Icons.wb_cloudy;
      iconColor = Colors.grey;
    } else if (weatherCondition == 'rainy') {
      icon = Icons.beach_access;
      iconColor = Colors.blue;
    } else {
      return const AspectRatio(
        aspectRatio: 1, // const を削除
        child: Center(
          child: Placeholder(),
        ),
      );
    }

    return AspectRatio(
      aspectRatio: 1, // const を削除
      child: Center(
        child: Icon(
          icon,
          size: 150,
          color: iconColor,
        ),
      ),
    );
  }
}
