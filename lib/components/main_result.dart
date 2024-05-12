import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainResult extends StatelessWidget {
  const MainResult({
    required this.weatherCondition,
    super.key,
  });

  final String weatherCondition;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('weatherCondition', weatherCondition));
  }

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
        aspectRatio: 1,
        child: Center(
          child: Placeholder(),
        ),
      );
    }

    return AspectRatio(
      aspectRatio: 1,
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
