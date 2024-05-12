import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainResult extends StatelessWidget {
  const MainResult({
    Key? key, // super.key を追加
    required this.weatherCondition,
  }) : super(key: key); // super() コンストラクタの呼び出しを追加

  final String weatherCondition;

  @override
  Widget build(BuildContext context) {
    String iconPath;
    if (weatherCondition == 'sunny') {
      iconPath = 'assets/sunny.svg';
    } else if (weatherCondition == 'cloudy') {
      iconPath = 'assets/cloudy.svg';
    } else if (weatherCondition == 'rainy') {
      iconPath = 'assets/rainy.svg';
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
        child: SvgPicture.asset(
          iconPath,
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
