import 'package:flutter/material.dart';
import 'package:flutter_weather/app_image/resources.dart';
import 'package:flutter_weather/modules/home/ui/widgets/circle_stroke_widget.dart';
import 'package:flutter_weather/theme/app_color.dart';

class MainWeatherWidget extends StatelessWidget {
  final String city;
  final String temp;

  const MainWeatherWidget({
    Key? key,
    required this.city,
    required this.temp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image(image: AssetImage(AppImages.weatherMain)),
        ),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  city,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      height: 1.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: AppColors.textGrey),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                temp,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 70,
                  height: 1.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: AppColors.textGrey,
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: CircleStrokeWidget(
                width: 7.5,
                height: 7.5,
                borderWidth: 2,
                color: AppColors.textGrey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
