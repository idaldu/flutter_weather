import 'package:flutter/material.dart';
import 'package:flutter_weather/theme/app_color.dart';

class CircleStrokeWidget extends StatelessWidget {
  double width;
  double height;
  double borderWidth;
  Color color;

  CircleStrokeWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.borderWidth,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: color,
            width: borderWidth,
          ),
          borderRadius: BorderRadius.circular(100)),
    );
  }
}
