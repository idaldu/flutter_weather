import 'package:flutter/material.dart';
import 'package:flutter_weather/app_image/resources.dart';
import 'package:flutter_weather/theme/app_color.dart';

class SunriseSunsetWigdet extends StatelessWidget {
  const SunriseSunsetWigdet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(11)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SUNRISE & SUNSET',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: AppColors.textLight,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 31),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19),
                child: Image(image: AssetImage(AppImages.sunrise)),
              ),
              Text(
                'Length of day: 13H 12M',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: AppColors.textLight,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Remaining daylight: 9H 22M',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: AppColors.textLight,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
