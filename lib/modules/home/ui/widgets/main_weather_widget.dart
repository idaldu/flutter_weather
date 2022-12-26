import 'package:flutter/material.dart';
import 'package:flutter_weather/app_image/resources.dart';
import 'package:flutter_weather/theme/app_color.dart';

class MainWeatherWidget extends StatelessWidget {
  const MainWeatherWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _MainIconWidget(),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  'Hyderabad',
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
              Image(image: AssetImage(AppImages.arrow)),
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
                '31',
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
              child: Container(
                width: 7.5,
                height: 7.5,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: AppColors.textGrey, width: 2),
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _MainIconWidget extends StatelessWidget {
  const _MainIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 123,
      height: 113,
      child: Image(image: AssetImage(AppImages.weatherMain)),
    );
  }
}

class SliderControllerWidget extends StatelessWidget {
  const SliderControllerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: 80,
        height: 22,
        decoration: BoxDecoration(
            color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                  color: Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(100)),
            ),
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                  color: Color(0xFF2C2C2C),
                  borderRadius: BorderRadius.circular(100)),
            ),
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                  color: Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(100)),
            ),
          ],
        ),
      ),
    );
  }
}